!@test
subroutine test_BD_ComputeIniNodalCrv()
    ! test branches
    ! - simple rotation with known parameters: Pi on xaxis
    ! - 0 rotation
    ! - small rotation with baseline WM parameters calculated
    
    use pFUnit_mod
    use BeamDyn_Subs
    use NWTC_Num
    use test_tools
    
    implicit none

    real(BDKi), dimension(3,3) :: r
    real(BDKi), dimension(3)   :: test_wmparams, baseline_wmparams
    real(BDKi)                 :: angle, param, n(3)
    character(1024)            :: testname
    real(BDKi)                 :: tolerance
    integer(IntKi)             :: ErrStat
    character                  :: ErrMsg

    ! initialize NWTC_Num constants
    call SetConstants()
    
    tolerance = 1e-14
    
    ! --------------------------------------------------------------------------
    testname = "Tangent aligned with z-axis and 0 degree twist:"
    n = (/ real(0.0, BDKi), real(0.0, BDKi), real(1.0, BDKi) /) ! tangent axis
    angle = 0

    ! Baseline Wiener-Milenkovic parameters
    baseline_wmparams = (/ 0.0, 0.0, 0.0 /)

    call BD_ComputeIniNodalCrv(n, angle, test_wmparams, ErrStat, ErrMsg)

#line 38 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(0.0_BDKi, ErrStat, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 38) )
  if (anyExceptions()) return
#line 39 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
#line 39 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(baseline_wmparams, test_wmparams, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 39) )
  if (anyExceptions()) return
#line 40 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"

    ! --------------------------------------------------------------------------
    testname = "Tangent at 45 degree w.r.t. y-axis and 0 degree twist:"
    n = (/ 1.0_BDKi/sqrt(2.0_BDKi), 0.0_BDKi, 1.0_BDKi/sqrt(2.0_BDKi) /) ! tangent axis
    angle = 0.0_BDKi

    ! Baseline Wiener-Milenkovic parameters
    param = 4*tan((Pi_D/4)/4)
    baseline_wmparams = (/ real(0.0, BDKi), param, real(0.0, BDKi) /)

    call BD_ComputeIniNodalCrv(n, angle, test_wmparams, ErrStat, ErrMsg)

#line 52 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(0.0_BDKi, ErrStat, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 52) )
  if (anyExceptions()) return
#line 53 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
#line 53 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(baseline_wmparams, test_wmparams, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 53) )
  if (anyExceptions()) return
#line 54 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"

    ! --------------------------------------------------------------------------
    testname = "Tangent at -45 degree w.r.t. x-axis and 0 degree twist:"
    n = (/ 0.0_BDKi, 1.0_BDKi/sqrt(2.0_BDKi), 1.0_BDKi/sqrt(2.0_BDKi) /) ! tangent axis
    angle = 0.0_BDKi

    ! Baseline Wiener-Milenkovic parameters
    param = 4.*tan((-Pi_D/4.)/4.)
    baseline_wmparams = (/ param, real(0.0, BDKi), real(0.0, BDKi) /)

    call BD_ComputeIniNodalCrv(n, angle, test_wmparams, ErrStat, ErrMsg)

#line 66 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(0.0_BDKi, ErrStat, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 66) )
  if (anyExceptions()) return
#line 67 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
#line 67 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(baseline_wmparams, test_wmparams, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 67) )
  if (anyExceptions()) return
#line 68 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"

    ! --------------------------------------------------------------------------
    testname = "Tangent along z-axis with 45 degree twist:"
    n = (/ real(0.0, BDKi), real(0.0, BDKi), 1.0_BDKi /) ! tangent axis
    angle = 45.0_BDKi

    ! Baseline Wiener-Milenkovic parameters
    param = 4.*tan((Pi_D/4.)/4.)
    baseline_wmparams = (/ real(0.0, BDKi), real(0.0, BDKi), param /)

    call BD_ComputeIniNodalCrv(n, angle, test_wmparams, ErrStat, ErrMsg)

#line 80 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(0.0_BDKi, ErrStat, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 80) )
  if (anyExceptions()) return
#line 81 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
#line 81 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"
  call assertEqual(baseline_wmparams, test_wmparams, tolerance, testname, &
 & location=SourceLocation( &
 & 'test_BD_ComputeIniNodalCrv.F90', &
 & 81) )
  if (anyExceptions()) return
#line 82 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_ComputeIniNodalCrv.F90"

end subroutine test_BD_ComputeIniNodalCrv

module Wraptest_BD_ComputeIniNodalCrv
   use pFUnit_mod
   implicit none
   private

contains


end module Wraptest_BD_ComputeIniNodalCrv

function test_BD_ComputeIniNodalCrv_suite() result(suite)
   use pFUnit_mod
   use Wraptest_BD_ComputeIniNodalCrv
   type (TestSuite) :: suite

   external test_BD_ComputeIniNodalCrv


   suite = newTestSuite('test_BD_ComputeIniNodalCrv_suite')

   call suite%addTest(newTestMethod('test_BD_ComputeIniNodalCrv', test_BD_ComputeIniNodalCrv))


end function test_BD_ComputeIniNodalCrv_suite

