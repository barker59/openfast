module test_bladed_wind

    use pFUnit_mod
    use ifw_test_tools
    use InflowWind_Subs
    use InflowWind_Types

    implicit none

contains

    !@test
    subroutine test_bladed_wind_input()

        TYPE(FileInfoType)              :: InFileInfo
        TYPE(InflowWind_InputFile)      :: InputFileData
        CHARACTER(1024)                 :: PriPath 
        INTEGER(IntKi)                  :: TmpErrStat
        CHARACTER(ErrMsgLen)            :: TmpErrMsg

        CHARACTER(16)                   :: expected

        expected = "unused"
        PriPath = ""

        InFileInfo = getInputFileData()
        CALL InflowWind_ParseInputFileInfo(InputFileData , InFileInfo, PriPath, "inputFile.inp", "test.ech", TmpErrStat, TmpErrMsg)

#line 29 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_bladed_wind.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_bladed_wind.F90', &
 & 29) )
  if (anyExceptions()) return
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_bladed_wind.F90"
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_bladed_wind.F90"
  call assertEqual(trim(expected), InputFileData%BladedFF_FileName, &
 & location=SourceLocation( &
 & 'test_bladed_wind.F90', &
 & 30) )
  if (anyExceptions()) return
#line 31 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_bladed_wind.F90"
#line 31 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_bladed_wind.F90"
  call assertEqual(.FALSE.,        InputFileData%BladedFF_TowerFile, &
 & location=SourceLocation( &
 & 'test_bladed_wind.F90', &
 & 31) )
  if (anyExceptions()) return
#line 32 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_bladed_wind.F90"

    end subroutine

end module

module Wraptest_bladed_wind
   use pFUnit_mod
   use test_bladed_wind
   implicit none
   private

contains


end module Wraptest_bladed_wind

function test_bladed_wind_suite() result(suite)
   use pFUnit_mod
   use test_bladed_wind
   use Wraptest_bladed_wind
   type (TestSuite) :: suite

   suite = newTestSuite('test_bladed_wind_suite')

   call suite%addTest(newTestMethod('test_bladed_wind_input', test_bladed_wind_input))


end function test_bladed_wind_suite

