module test_BD_TrapezoidalPointWeight
    
    use pFUnit_mod
    use BeamDyn
    use NWTC_Num
    use test_tools

    implicit none

    type(BD_ParameterType)     :: p

    integer(IntKi)             :: nqp
    integer(IntKi)             :: refine
    integer(IntKi)             :: station_total
    real(BDKi), allocatable    :: station_eta(:)
    real(BDKi), allocatable    :: baseline_QPtN(:)
    real(BDKi), allocatable    :: baseline_QPtW(:)
 
    integer(IntKi)             :: ErrStat
    character                  :: ErrMsg
    character(1024)            :: testname
    real(BDKi)                 :: tolerance

contains

    !@test
    subroutine test_BD_TrapezoidalPointWeight_2station()
        
        ! initialize NWTC_Num constants
        call SetConstants()
        
        tolerance = 1e-14
        
        ! --------------------------------------------------------------------------
        testname = "test_BD_TrapezoidalPointWeight_2station_8refine"

        station_total = 2 

        call AllocAry(station_eta,     station_total, "station_eta",     ErrStat, ErrMsg)

        ! simple case where we have enpoints only; typical with constant cross sections
        station_eta(1:station_total) =  (/0.,  1./)

        refine = 8

        nqp = (station_total - 1)*refine + 1

        p=simpleParameterType(1,1,nqp,0,refine) 

        call AllocAry(baseline_QPtN, nqp, "baseline_QPtN", ErrStat, ErrMsg)
        call AllocAry(baseline_QPtW, nqp, "baseline_QPtW", ErrStat, ErrMsg)
  
        baseline_QPtN(1:nqp) = (/ -1., -0.75, -0.5, -0.25, 0., 0.25, 0.5, 0.75, 1.  /)
        baseline_QPtW(1:nqp) = (/ 0.125, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.125 /)

        call BD_TrapezoidalPointWeight(p, station_eta, station_total)
         
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
  call assertEqual(baseline_QPtN,  p%QPtN, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_TrapezoidalPointWeight.F90', &
 & 58) )
  if (anyExceptions()) return
#line 59 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
#line 59 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
  call assertEqual(baseline_QPtW,  p%QPtWeight, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_TrapezoidalPointWeight.F90', &
 & 59) )
  if (anyExceptions()) return
#line 60 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
 
        deallocate(station_eta)
        deallocate(baseline_QPtN)
        deallocate(baseline_QPtW)

        call BD_DestroyParam(p, ErrStat, ErrMsg)

    end subroutine

    !@test
    subroutine test_BD_TrapezoidalPointWeight_3station()
        
        ! initialize NWTC_Num constants
        call SetConstants()
        
        tolerance = 1e-14
        
        ! --------------------------------------------------------------------------
        testname = "test_BD_TrapezoidalPointWeight_3station_2refine"

        ! provide three stations, unequally distributed
        ! refine by factor of two

        station_total = 3 

        call AllocAry(station_eta,     station_total, "station_eta",     ErrStat, ErrMsg)

        station_eta(1:station_total) =  (/0., 0.25, 1./)

        refine = 2

        nqp = (station_total - 1)*refine + 1

        p=simpleParameterType(1,1,nqp,0,refine) 

        call AllocAry(baseline_QPtN, nqp, "baseline_QPtN", ErrStat, ErrMsg)
        call AllocAry(baseline_QPtW, nqp, "baseline_QPtW", ErrStat, ErrMsg)
  
        baseline_QPtN(1:nqp) = (/ -1., -0.75, -0.5,  0.25, 1.  /)
        baseline_QPtW(1:nqp) = (/ 0.125,  0.25, 0.125+0.5*0.75, 0.75, 0.5*0.75/)

        call BD_TrapezoidalPointWeight(p, station_eta, station_total)
         
#line 103 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
  call assertEqual(baseline_QPtN,  p%QPtN, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_TrapezoidalPointWeight.F90', &
 & 103) )
  if (anyExceptions()) return
#line 104 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
#line 104 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
  call assertEqual(baseline_QPtW,  p%QPtWeight, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_TrapezoidalPointWeight.F90', &
 & 104) )
  if (anyExceptions()) return
#line 105 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_TrapezoidalPointWeight.F90"
 
        deallocate(station_eta)
        deallocate(baseline_QPtN)
        deallocate(baseline_QPtW)

        call BD_DestroyParam(p, ErrStat, ErrMsg)

    end subroutine
end module

module Wraptest_BD_TrapezoidalPointWeight
   use pFUnit_mod
   use test_BD_TrapezoidalPointWeight
   implicit none
   private

contains


end module Wraptest_BD_TrapezoidalPointWeight

function test_BD_TrapezoidalPointWeight_suite() result(suite)
   use pFUnit_mod
   use test_BD_TrapezoidalPointWeight
   use Wraptest_BD_TrapezoidalPointWeight
   type (TestSuite) :: suite

   suite = newTestSuite('test_BD_TrapezoidalPointWeight_suite')

   call suite%addTest(newTestMethod('test_BD_TrapezoidalPointWeight_2station', test_BD_TrapezoidalPointWeight_2station))

   call suite%addTest(newTestMethod('test_BD_TrapezoidalPointWeight_3station', test_BD_TrapezoidalPointWeight_3station))


end function test_BD_TrapezoidalPointWeight_suite

