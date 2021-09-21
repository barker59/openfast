module test_hawc_wind

    use pFUnit_mod
    use ifw_test_tools
    use InflowWind_Subs
    use InflowWind_Types

    implicit none

contains

    !@test
    subroutine test_hawc_wind_input()

        TYPE(FileInfoType)              :: InFileInfo
        TYPE(InflowWind_InputFile)      :: InputFileData
        CHARACTER(1024)                 :: PriPath 
        INTEGER(IntKi)                  :: TmpErrStat
        CHARACTER(ErrMsgLen)            :: TmpErrMsg

        CHARACTER(32)                   :: expected_fnu
        CHARACTER(32)                   :: expected_fnv
        CHARACTER(32)                   :: expected_fnw

        PriPath = ""
        expected_fnu = "wasp\Output\basic_5u.bin"
        expected_fnv = "wasp\Output\basic_5v.bin"
        expected_fnw = "wasp\Output\basic_5w.bin"

        InFileInfo = getInputFileData()
        CALL InflowWind_ParseInputFileInfo(InputFileData , InFileInfo, PriPath, "inputFile.inp", "test.ech", TmpErrStat, TmpErrMsg)

#line 33 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 33) )
  if (anyExceptions()) return
#line 34 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"

#line 35 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(trim(expected_fnu), InputFileData%HAWC_FileName_u, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 35) )
  if (anyExceptions()) return
#line 36 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 36 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(trim(expected_fnv), InputFileData%HAWC_FileName_v, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 36) )
  if (anyExceptions()) return
#line 37 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 37 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(trim(expected_fnw), InputFileData%HAWC_FileName_w, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 37) )
  if (anyExceptions()) return
#line 38 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 38 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(64, InputFileData%HAWC_nx, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 38) )
  if (anyExceptions()) return
#line 39 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 39 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(32, InputFileData%HAWC_ny, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 39) )
  if (anyExceptions()) return
#line 40 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 40 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(32, InputFileData%HAWC_nz, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 40) )
  if (anyExceptions()) return
#line 41 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 41 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(16, InputFileData%HAWC_dx, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 41) )
  if (anyExceptions()) return
#line 42 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 42 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(3,  InputFileData%HAWC_dy, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 42) )
  if (anyExceptions()) return
#line 43 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 43 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(3,  InputFileData%HAWC_dz, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 43) )
  if (anyExceptions()) return
#line 44 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 44 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(90, InputFileData%FF%RefHt, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 44) )
  if (anyExceptions()) return
#line 45 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"

#line 46 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(1,  InputFileData%FF%ScaleMethod, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 46) )
  if (anyExceptions()) return
#line 47 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 47 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(1,  InputFileData%FF%SF(1), &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 47) )
  if (anyExceptions()) return
#line 48 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 48 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(1,  InputFileData%FF%SF(2), &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 48) )
  if (anyExceptions()) return
#line 49 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 49 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(1,  InputFileData%FF%SF(3), &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 49) )
  if (anyExceptions()) return
#line 50 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 50 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(12, InputFileData%FF%SigmaF(1), &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 50) )
  if (anyExceptions()) return
#line 51 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 51 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(8,  InputFileData%FF%SigmaF(2), &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 51) )
  if (anyExceptions()) return
#line 52 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 52 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(2,  InputFileData%FF%SigmaF(3), &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 52) )
  if (anyExceptions()) return
#line 53 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"

#line 54 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(5,  InputFileData%FF%URef, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 54) )
  if (anyExceptions()) return
#line 55 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 55 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(2,  InputFileData%FF%WindProfileType, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 55) )
  if (anyExceptions()) return
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(0,  InputFileData%FF%PLExp, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 56) )
  if (anyExceptions()) return
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(0.03, InputFileData%FF%Z0, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 57) )
  if (anyExceptions()) return
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"
  call assertEqual(0,  InputFileData%FF%XOffset, &
 & location=SourceLocation( &
 & 'test_hawc_wind.F90', &
 & 58) )
  if (anyExceptions()) return
#line 59 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_hawc_wind.F90"

    end subroutine

end module

module Wraptest_hawc_wind
   use pFUnit_mod
   use test_hawc_wind
   implicit none
   private

contains


end module Wraptest_hawc_wind

function test_hawc_wind_suite() result(suite)
   use pFUnit_mod
   use test_hawc_wind
   use Wraptest_hawc_wind
   type (TestSuite) :: suite

   suite = newTestSuite('test_hawc_wind_suite')

   call suite%addTest(newTestMethod('test_hawc_wind_input', test_hawc_wind_input))


end function test_hawc_wind_suite

