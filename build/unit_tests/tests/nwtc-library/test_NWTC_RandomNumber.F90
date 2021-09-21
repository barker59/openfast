module test_NWTC_RandomNumber

    use pFUnit_mod
    use NWTC_RandomNumber
    use nwtc_library_test_tools
    
    implicit none

    character(1024), parameter :: dumpfile="randnumber.temp"

contains
    
!@test
subroutine test_RANLUX()

    type(NWTC_RandomNumber_ParameterType)  :: p              ! Paramters for random number generation
    integer(IntKi)               :: error_status
    character(ErrMsgLen)         :: error_message

    real(ReKi)                   :: random_numbers(2)  ! Uniformly distributed random numbers

    p%pRNG = pRNG_RANLUX
    p%RandSeed(1) = 1

    call RandNum_Init(p, error_status, error_message)
#line 26 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_RandomNumber.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_RandomNumber.F90', &
 & 26) )
  if (anyExceptions()) return
#line 27 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_RandomNumber.F90"

    call UniformRandomNumbers(p%pRNG, random_numbers)
#line 29 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_RandomNumber.F90"
  call assertEqual( (/ 0.94589489698410034, 0.47347849607467651 /), random_numbers , &
 & location=SourceLocation( &
 & 'test_NWTC_RandomNumber.F90', &
 & 29) )
  if (anyExceptions()) return
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_RandomNumber.F90"

end subroutine

!@test
subroutine test_INTRINSIC()

    type(NWTC_RandomNumber_ParameterType)  :: p              ! Paramters for random number generation
    integer(IntKi)               :: error_status
    character(ErrMsgLen)         :: error_message

    integer                      :: expected_seed_count
    real(ReKi)                   :: random_numbers(2)  ! Uniformly distributed random numbers

    p%pRNG = pRNG_INTRINSIC
    p%RandSeed(1) = 1
    p%RandSeed(2) = 2

    call hide_terminal_output()
    call RandNum_Init(p, error_status, error_message)
    call show_terminal_output()
#line 50 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_RandomNumber.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_RandomNumber.F90', &
 & 50) )
  if (anyExceptions()) return
#line 51 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_RandomNumber.F90"

    ! We cant use this test since it will fail for various machine/compiler combinations
    ! call UniformRandomNumbers(p%pRNG, random_numbers)
    ! @assertEqual( (/ 0.80377975339288821, 0.47469797199574959 /), random_numbers )
end subroutine

end module

module Wraptest_NWTC_RandomNumber
   use pFUnit_mod
   use test_NWTC_RandomNumber
   implicit none
   private

contains


end module Wraptest_NWTC_RandomNumber

function test_NWTC_RandomNumber_suite() result(suite)
   use pFUnit_mod
   use test_NWTC_RandomNumber
   use Wraptest_NWTC_RandomNumber
   type (TestSuite) :: suite

   suite = newTestSuite('test_NWTC_RandomNumber_suite')

   call suite%addTest(newTestMethod('test_RANLUX', test_RANLUX))

   call suite%addTest(newTestMethod('test_INTRINSIC', test_INTRINSIC))


end function test_NWTC_RandomNumber_suite

