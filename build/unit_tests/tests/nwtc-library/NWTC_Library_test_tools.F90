module nwtc_library_test_tools

use NWTC_IO

implicit none

#ifdef _WIN32
    character(9), parameter :: nullfile="NUL"
    character(11), parameter :: terminal="CON"
#else
    character(9), parameter :: nullfile="/dev/null"
    character(11), parameter :: terminal="/dev/stdout"
#endif

integer, parameter :: stdout=CU

contains

subroutine hide_terminal_output()
    open(unit=stdout, file=trim(nullfile))
end subroutine

subroutine show_terminal_output()
    open(unit=stdout, file=terminal, status="old")
end subroutine

end module

module Wrapnwtc_library_test_tools
   use pFUnit_mod
   use nwtc_library_test_tools
   implicit none
   private

contains


end module Wrapnwtc_library_test_tools

function nwtc_library_test_tools_suite() result(suite)
   use pFUnit_mod
   use nwtc_library_test_tools
   use Wrapnwtc_library_test_tools
   type (TestSuite) :: suite

   suite = newTestSuite('nwtc_library_test_tools_suite')


end function nwtc_library_test_tools_suite

