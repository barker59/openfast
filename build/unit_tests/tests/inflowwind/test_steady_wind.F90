module test_steady_wind

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

        PriPath = ""

        InFileInfo = getInputFileData()
        CALL InflowWind_ParseInputFileInfo(InputFileData , InFileInfo, PriPath, "inputFile.inp", "test.ech", TmpErrStat, TmpErrMsg)

#line 26 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 26) )
  if (anyExceptions()) return
#line 27 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
#line 27 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(1, InputFileData%WindType, &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 27) )
  if (anyExceptions()) return
#line 28 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
#line 28 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(1, InputFileData%NWindVel, &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 28) )
  if (anyExceptions()) return
#line 29 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
#line 29 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(90, InputFileData%WindVziList(1), &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 29) )
  if (anyExceptions()) return
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"

    end subroutine


    !@test
    subroutine test_steady_wind_input_mult_heights()

        TYPE(FileInfoType)              :: InFileInfo
        TYPE(InflowWind_InputFile)      :: InputFileData 
        CHARACTER(1024)                 :: PriPath
        INTEGER(IntKi)                  :: TmpErrStat
        CHARACTER(ErrMsgLen)            :: TmpErrMsg

        PriPath = ""

        InFileInfo = getInputFileData()
        InFileInfo%Lines(8:11) = (/ &
            '          2   NWindVel       - Number of points to output the wind velocity    (0 to 9)                                                                                            ', &
            '        0,0   WindVxiList    - List of coordinates in the inertial X direction (m)                                                                                                 ', &
            '        0,0   WindVyiList    - List of coordinates in the inertial Y direction (m)                                                                                                 ', &
            '     80,100   WindVziList    - List of coordinates in the inertial Z direction (m)                                                                                                 ' &
        /)

        CALL InflowWind_ParseInputFileInfo(InputFileData , InFileInfo, PriPath, "inputFile.inp", "test.ech", TmpErrStat, TmpErrMsg)

#line 55 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 55) )
  if (anyExceptions()) return
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(1, InputFileData%WindType, &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 56) )
  if (anyExceptions()) return
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(2, InputFileData%NWindVel, &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 57) )
  if (anyExceptions()) return
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(80, InputFileData%WindVziList(1), &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 58) )
  if (anyExceptions()) return
#line 59 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
#line 59 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"
  call assertEqual(100, InputFileData%WindVziList(2), &
 & location=SourceLocation( &
 & 'test_steady_wind.F90', &
 & 59) )
  if (anyExceptions()) return
#line 60 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_steady_wind.F90"

    end subroutine

end module

module Wraptest_steady_wind
   use pFUnit_mod
   use test_steady_wind
   implicit none
   private

contains


end module Wraptest_steady_wind

function test_steady_wind_suite() result(suite)
   use pFUnit_mod
   use test_steady_wind
   use Wraptest_steady_wind
   type (TestSuite) :: suite

   suite = newTestSuite('test_steady_wind_suite')

   call suite%addTest(newTestMethod('test_steady_wind_input_single_height', test_steady_wind_input_single_height))

   call suite%addTest(newTestMethod('test_steady_wind_input_mult_heights', test_steady_wind_input_mult_heights))


end function test_steady_wind_suite

