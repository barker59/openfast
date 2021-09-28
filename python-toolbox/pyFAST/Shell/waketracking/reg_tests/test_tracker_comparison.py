#!/usr/bin/env python
#
# Streamlined version of tracker_comparison.py for CI, assuming the reference
# data have already been generated by tracker_comparison.py
#
import os
import numpy as np
import pandas as pd

from samwich.dataloaders import RawData
from examples.turbines import Turbine  # container for turbine properties
from samwich.waketrackers import track
from samwich.gaussian_functions import Bastankhah

trackerlist = track()
rootdir = os.path.join(os.environ['HOME'],'waketracking')
datadir = os.path.join(rootdir,'reg_tests', 'MWE-data')


class TrackerComparison(object):

    def __init__(self,turbine='V27',base_location=(0,0),verbose=True):
        self.verbose = verbose

        turb = Turbine(turbine)
        self.turb = turb
        self.turb.base_location = base_location

        self.profile = np.loadtxt(os.path.join(datadir,'wind_profile.csv'), delimiter=',')

        # additional tracking parameters
        self.Uref = np.interp(turb.zhub, self.profile[:,0], self.profile[:,1])
        self.ref_thrust = turb.ref_CT * 0.5*self.Uref**2 * turb.rotor_area  # force / density
        if verbose:
            print('ref thrust (momentum deficit) is',self.ref_thrust,'N/(kg/m^3)')


    def track_all(self,testname,tol=1e-4):
        """Test all trackers given sample data with label 'testname'"""
        wake,yc,zc = {},{},{}

        self.sample = RawData(
            os.path.join(datadir,'snapshot_'+testname+'_WFoR.csv')
        )
        sliceI = self.sample.sliceI()
        x,y,z,u = sliceI
        xloc = (np.mean(x) - self.turb.base_location[0])
        if self.verbose:
            print('slice at x/D:',xloc/self.turb.D)

        # Constant area contours
        tracker = 'const area'
        print('\n'+tracker+'\n'+len(tracker)*'-')
        wake[tracker] = track(sliceI, method='ConstantArea', verbose=self.verbose) 
        wake[tracker].remove_shear(wind_profile=self.profile)
        yc[tracker],zc[tracker] = wake[tracker].find_centers(self.turb.rotor_area)

        # Momentum deficit contours
        tracker = 'momentum deficit'
        print('\n'+tracker+'\n'+len(tracker)*'-')
        flux = lambda u,u_w: -u * u_w  # function arguments correspond to field_names
        wake[tracker] = track(sliceI, method='ConstantFlux', verbose=self.verbose) 
        wake[tracker].remove_shear(wind_profile=self.profile)
        yc[tracker],zc[tracker] = wake[tracker].find_centers(self.ref_thrust,
                                                             flux_function=flux,
                                                             field_names=('u','u_tot'))

        # Gaussian Fits
        tracker = 'gaussian (R)'
        print('\n'+tracker+'\n'+len(tracker)*'-')
        wake[tracker] = track(sliceI, method='Gaussian', verbose=self.verbose) 
        wake[tracker].remove_shear(wind_profile=self.profile)
        yc[tracker],zc[tracker] = wake[tracker].find_centers(umin=None,
                                                             sigma=self.turb.D/2)

        tracker = 'gaussian (Bastankhah)'
        print('\n'+tracker+'\n'+len(tracker)*'-')
        # - model depends on case-dependent wake growth rate, kstar
        #   ad-hoc value of kstar taken from Bastankhah & Porte-Agel 2014
        #   (the smallest of the full-scale cases)
        gauss = Bastankhah(CT=self.turb.ref_CT, d0=self.turb.D, kstar=0.03)
        wake[tracker] = track(sliceI, method='Gaussian', verbose=self.verbose) 
        wake[tracker].remove_shear(wind_profile=self.profile)
        yc[tracker],zc[tracker] = wake[tracker].find_centers(
            umin=gauss.amplitude(xloc, -self.Uref),
            sigma=gauss.sigma(xloc)
        )

        # - sigma estimated from momentum deficit
        tracker = 'gaussian (ideal)'
        print('\n'+tracker+'\n'+len(tracker)*'-')
        wake[tracker] = track(sliceI, method='Gaussian', verbose=self.verbose) 
        wake[tracker].remove_shear(wind_profile=self.profile)
        max_VD = -np.min(wake[tracker].u,axis=(1,2))  # max velocity deficit, u.shape == (Ntimes,Nh,Nv)
        sigma_opt = np.sqrt(self.ref_thrust / (np.pi*max_VD*(2*self.Uref - max_VD)))
        yc[tracker],zc[tracker] = wake[tracker].find_centers(umin=None, sigma=sigma_opt)

        # 2D Gaussian
        tracker = 'elliptical'
        print('\n'+tracker+'\n'+len(tracker)*'-')
        wake[tracker] = track(sliceI, method='Gaussian2D', verbose=self.verbose) 
        wake[tracker].remove_shear(wind_profile=self.profile)
        yc[tracker],zc[tracker] = wake[tracker].find_centers(
            umin=None,
            A_ref=self.turb.rotor_area,
            A_min=self.turb.rotor_area/5.0,  # ad hoc value
            A_max=self.turb.rotor_area*2.0,  # ad hoc value
            AR_max=10.0  # ad hoc value
        )

        # Test Region
        # - minimum power within circular region
        tracker = 'min power'
        print('\n'+tracker+'\n'+len(tracker)*'-')
        wake[tracker] = track(sliceI, method='CircularTestRegion', verbose=self.verbose) 
        wake[tracker].remove_shear(wind_profile=self.profile)
        yc[tracker],zc[tracker] = wake[tracker].find_centers(
            test_radius=self.turb.D/2,  # following Vollmer 2016
            test_function=lambda u: u**3,
            test_field='u_tot'
        )


        # NOW, compare detected wake centers
        itime = 0
        all_yc = np.array([ yc[tracker][itime] for tracker in wake.keys() ])
        all_zc = np.array([ zc[tracker][itime] for tracker in wake.keys() ])

        refpath = os.path.join(rootdir,'reg_tests', 'ref-data',
                               '{}_detected_centers.csv'.format(testname))
        #refdata = np.genfromtxt(refpath,skip_header=1,delimiter=',',dtype=None,encoding=None)
        #trackers = [vals[0] for vals in refdata]
        #yref = [vals[1] for vals in refdata]
        #zref = [vals[2] for vals in refdata]
        # unpythonic but guaranteed to load w/o error
        trackers, yref, zref = [], [], []
        with open(refpath,'r') as f:
            f.readline()
            for line in f:
                line = line.split(',')
                trackers.append(line[0])
                yref.append(float(line[1]))
                zref.append(float(line[2]))
        yref = np.array(yref)
        zref = np.array(zref)

        yerr = np.abs(yref - all_yc)
        zerr = np.abs(zref - all_zc)
        if self.verbose:
            print('\n\nTRACKER ERRORS')
            for tracker,ye,ze in zip(trackers,yerr,zerr):
                print(tracker,ye,ze)

        # Compare with existing data
        print('Max y,z error:', np.max(yerr), np.max(zerr))
        if np.all(yerr > tol) or np.all(zerr > tol):
            fname = '{}_detected_centers.csv'.format(testname)
            df = pd.DataFrame(index=wake.keys(), data={'y':all_yc, 'z':all_zc})
            df.to_csv(fname)
            errstr = 'Identified wake centers for \'' + testname \
                    + '\' differ by more than ' + str(tol)
            raise AssertionError(errstr)


#==============================================================================
# pytests

def test_MWE():
    tester = TrackerComparison(turbine='V27', base_location=(2414.8, 1633.3))
    tester.track_all('mean')
    tester.track_all('instantaneous')


#==============================================================================
if __name__ == '__main__':
    import sys
    if len(sys.argv) > 1:
        cases = sys.argv[1:]
    else:
        cases = ['mean','instantaneous']

    print(trackerlist)

    tester = TrackerComparison(turbine='V27', base_location=(2414.8, 1633.3))
    for case in cases:
        tester.track_all(case)

