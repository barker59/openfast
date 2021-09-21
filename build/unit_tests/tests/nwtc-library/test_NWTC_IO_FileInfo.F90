module test_NWTC_IO_FileInfo

    use pFUnit_mod
    use NWTC_IO
    
    implicit none

contains

!@test
subroutine test_initfileinfo()

    ! This case should result in error status 0.
    ! It's a normal initialization of FileInfoType.

    integer, parameter :: num_lines = 5
    integer, parameter :: num_files = 1

    integer(IntKi) :: error_status
    character(ErrMsgLen) :: error_message
    character(1024) :: input_strings(num_lines)
    type(FileInfoType) :: file_info_type
    integer :: i

    input_strings = (/ &
        "line 0",  &
        "line 1",  &
        "line 2",  &
        "line 3",  &
        "line 4"   &
    /)
    call InitFileInfo( input_strings, file_info_type, error_status, error_message )

#line 34 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual(num_lines, file_info_type%NumLines, &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 34) )
  if (anyExceptions()) return
#line 35 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
#line 35 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual(num_files, file_info_type%NumFiles, &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 35) )
  if (anyExceptions()) return
#line 36 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
    do i = 1, num_lines
#line 37 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual(i, file_info_type%FileLine(i), &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 37) )
  if (anyExceptions()) return
#line 38 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
    end do
    do i = 1, num_files
#line 40 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual(i, file_info_type%FileIndx(i), &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 40) )
  if (anyExceptions()) return
#line 41 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
    end do

    ! TODO: test FileList when we actually use it

    do i = 1, num_lines
#line 46 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual( trim(input_strings(i)), trim(file_info_type%Lines(i)) , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 46) )
  if (anyExceptions()) return
#line 47 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
    end do

#line 49 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 49) )
  if (anyExceptions()) return
#line 50 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
#line 50 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual( "", error_message , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 50) )
  if (anyExceptions()) return
#line 51 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
end subroutine

!@test
subroutine test_initfileinfo2()
    
    ! This case should result in a non-zero error status.
    ! It attempts to initialize FileInfoType without having
    ! properly initializing the input strings array.

    integer, parameter :: num_lines = 5
    integer, parameter :: num_files = 1

    integer(IntKi) :: error_status
    character(ErrMsgLen) :: error_message
    character(1025) :: input_strings(num_lines)
    type(FileInfoType) :: file_info_type
    integer :: i

    input_strings = (/ &
        "line 0",  &
        "line 1",  &
        "line 2",  &
        "line 3",  &
        "line 4"   &
    /)
    call InitFileInfo( input_strings, file_info_type, error_status, error_message )

#line 78 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual(num_lines, file_info_type%NumLines, &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 78) )
  if (anyExceptions()) return
#line 79 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
#line 79 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual(num_files, file_info_type%NumFiles, &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 79) )
  if (anyExceptions()) return
#line 80 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
#line 80 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
  call assertEqual( 4, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_FileInfo.F90', &
 & 80) )
  if (anyExceptions()) return
#line 81 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_FileInfo.F90"
    
end subroutine

end module
module Wraptest_NWTC_IO_FileInfo
   use pFUnit_mod
   use test_NWTC_IO_FileInfo
   implicit none
   private

contains


end module Wraptest_NWTC_IO_FileInfo

function test_NWTC_IO_FileInfo_suite() result(suite)
   use pFUnit_mod
   use test_NWTC_IO_FileInfo
   use Wraptest_NWTC_IO_FileInfo
   type (TestSuite) :: suite

   suite = newTestSuite('test_NWTC_IO_FileInfo_suite')

   call suite%addTest(newTestMethod('test_initfileinfo', test_initfileinfo))

   call suite%addTest(newTestMethod('test_initfileinfo2', test_initfileinfo2))


end function test_NWTC_IO_FileInfo_suite

