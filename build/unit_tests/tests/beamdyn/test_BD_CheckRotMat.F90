!@test
subroutine test_BD_CheckRotMat()
    ! test branches
    ! - known valid rotation matrix: pi about x-axis
    ! - known invalid rotation matrix: halve the angle of the diagonal elements

    use pFUnit_mod
    use BeamDyn_Subs
    use NWTC_Num
    use test_tools
    
    implicit none
    
    real(BDKi)           :: n(3)
    real(BDKi)           :: angle
    real(BDKi)           :: testR(3,3)
    integer(IntKi)       :: ErrStat
    character(ErrMsgLen) :: ErrMsg
    character(1024)      :: testname

    ! initialize NWTC_Num constants
    call SetConstants()

    ! set the rotation axis and angle for all tests
    n = (/ 1, 0, 0 /) ! x axis
    angle = Pi
    
    
    ! --------------------------------------------------------------------------    
    testname = "known valid rotation matrix: pi about x-axis:"
    testR = calcRotationMatrix(angle, n)
    call BD_CheckRotMat(testR, ErrStat, ErrMsg)
#line 33 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_CheckRotMat.F90"
  call assertEqual(0, ErrStat, testname, &
 & location=SourceLocation( &
 & 'test_BD_CheckRotMat.F90', &
 & 33) )
  if (anyExceptions()) return
#line 34 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_CheckRotMat.F90"


    ! --------------------------------------------------------------------------    
    testname = "known invalid rotation matrix: halve the angle of the diagonal elements:"
    ! this should produce a fatal error (ErrStat = 4)
    testR(:,2) = (/ testR(1,2), cos(real(Pi/2, BDKi)),            testR(3,2) /)
    testR(:,3) = (/ testR(1,2),            testR(2,2), cos(real(Pi/2, BDKi)) /)
    call BD_CheckRotMat(testR, ErrStat, ErrMsg)    
#line 42 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_CheckRotMat.F90"
  call assertEqual(4, ErrStat, testname, &
 & location=SourceLocation( &
 & 'test_BD_CheckRotMat.F90', &
 & 42) )
  if (anyExceptions()) return
#line 43 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/beamdyn/tests/test_BD_CheckRotMat.F90"

end subroutine test_BD_CheckRotMat

module Wraptest_BD_CheckRotMat
   use pFUnit_mod
   implicit none
   private

contains


end module Wraptest_BD_CheckRotMat

function test_BD_CheckRotMat_suite() result(suite)
   use pFUnit_mod
   use Wraptest_BD_CheckRotMat
   type (TestSuite) :: suite

   external test_BD_CheckRotMat


   suite = newTestSuite('test_BD_CheckRotMat_suite')

   call suite%addTest(newTestMethod('test_BD_CheckRotMat', test_BD_CheckRotMat))


end function test_BD_CheckRotMat_suite

