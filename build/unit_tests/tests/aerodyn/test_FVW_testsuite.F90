!@test
subroutine test_AD_FVW()
    ! test branches
    ! - known valid checks for various FVW routines (contained in own module)
    ! - known invalid rotation matrix: halve the angle of the diagonal elements

    use pFUnit_mod
    use NWTC_Num
    use FVW_Tests 
    
    implicit none
    
    integer(IntKi)       :: ErrStat
    character(ErrMsgLen) :: ErrMsg
    character(1024)      :: testname

    ! initialize NWTC_Num constants
    call SetConstants()

!This is a single routine that contains the test cases below.   
   ! --------------------------------------------------------------------------    
   testname = "Set of FVW tests"
   call FVW_RunTests( ErrStat, ErrMsg )
#line 24 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/aerodyn/tests/test_FVW_testsuite.F90"
  call assertEqual(0, ErrStat, testname, &
 & location=SourceLocation( &
 & 'test_FVW_testsuite.F90', &
 & 24) )
  if (anyExceptions()) return
#line 25 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/aerodyn/tests/test_FVW_testsuite.F90"


! test routines from FVW_RunTests to be run individually -- except these are all private
!   ! --------------------------------------------------------------------------    
!   testname = "known valid Biot-Savart segment"
!   call Test_BiotSavart_Sgmt(testname, ErrStat, ErrMsg)
!   @assertEqual(0, ErrStat, testname)
!
!   ! --------------------------------------------------------------------------    
!   testname = "known valid Biot-Savart part"
!   call Test_BiotSavart_Part(testname, ErrStat, ErrMsg)
!   @assertEqual(0, ErrStat, testname)
!
!   ! --------------------------------------------------------------------------    
!   testname = "known valid Biot-Savart to part-tree"
!   call Test_BiotSavart_PartTree(testname, ErrStat, ErrMsg)
!   @assertEqual(0, ErrStat, testname)
!
!   ! --------------------------------------------------------------------------    
!   testname = "known valid segment split to parts"
!   call Test_SegmentsToPart(testname, ErrStat, ErrMsg)
!   @assertEqual(0, ErrStat, testname)
 
end subroutine test_AD_FVW

module Wraptest_FVW_testsuite
   use pFUnit_mod
   implicit none
   private

contains


end module Wraptest_FVW_testsuite

function test_FVW_testsuite_suite() result(suite)
   use pFUnit_mod
   use Wraptest_FVW_testsuite
   type (TestSuite) :: suite

   external test_AD_FVW


   suite = newTestSuite('test_FVW_testsuite_suite')

   call suite%addTest(newTestMethod('test_AD_FVW', test_AD_FVW))


end function test_FVW_testsuite_suite

