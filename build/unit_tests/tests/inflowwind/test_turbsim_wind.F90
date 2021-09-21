module test_turbsim_wind

    use pFUnit_mod
    use ifw_test_tools
    use InflowWind_Subs
    use InflowWind_Types

    implicit none

contains

    !@test
    subroutine test_steady_wind_input_single_height()

        TYPE(FileInfoType)              :: InFileInfo
        TYPE(InflowWind_InputFile)      :: InputFileData
        CHARACTER(1024)                 :: PriPath 
        INTEGER(IntKi)                  :: TmpErrStat
        CHARACTER(ErrMsgLen)            :: TmpErrMsg

        CHARACTER(16)                   :: expected

        expected = "Wind/08ms.wnd"
        PriPath = ""

        InFileInfo = getInputFileData()
        CALL InflowWind_ParseInputFileInfo(InputFileData , InFileInfo, PriPath, "inputFile.inp", "test.ech", TmpErrStat, TmpErrMsg)

#line 29 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_turbsim_wind.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_turbsim_wind.F90', &
 & 29) )
  if (anyExceptions()) return
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_turbsim_wind.F90"
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_turbsim_wind.F90"
  call assertEqual(trim(expected), InputFileData%TSFF_FileName, &
 & location=SourceLocation( &
 & 'test_turbsim_wind.F90', &
 & 30) )
  if (anyExceptions()) return
#line 31 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_turbsim_wind.F90"

    end subroutine

end module

module Wraptest_turbsim_wind
   use pFUnit_mod
   use test_turbsim_wind
   implicit none
   private

contains


end module Wraptest_turbsim_wind

function test_turbsim_wind_suite() result(suite)
   use pFUnit_mod
   use test_turbsim_wind
   use Wraptest_turbsim_wind
   type (TestSuite) :: suite

   suite = newTestSuite('test_turbsim_wind_suite')

   call suite%addTest(newTestMethod('test_steady_wind_input_single_height', test_steady_wind_input_single_height))


end function test_turbsim_wind_suite

