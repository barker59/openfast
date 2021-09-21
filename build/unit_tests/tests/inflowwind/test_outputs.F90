module test_outputs

    use pFUnit_mod
    use ifw_test_tools
    use InflowWind_Subs
    use InflowWind_Types

    implicit none

contains

    !@test
    subroutine test_outputs_parsing()

        TYPE(FileInfoType)              :: InFileInfo
        TYPE(InflowWind_InputFile)      :: InputFileData
        CHARACTER(1024)                 :: PriPath 
        INTEGER(IntKi)                  :: TmpErrStat
        CHARACTER(ErrMsgLen)            :: TmpErrMsg

        PriPath = ""

        InFileInfo = getInputFileData()
        CALL InflowWind_ParseInputFileInfo(InputFileData , InFileInfo, PriPath, "inputFile.inp", "test.ech", TmpErrStat, TmpErrMsg)

#line 26 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 26) )
  if (anyExceptions()) return
#line 27 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
#line 27 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual(.FALSE.,     InputFileData%SumPrint, &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 27) )
  if (anyExceptions()) return
#line 28 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
#line 28 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual("Wind1VelX", InputFileData%OutList(1), &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 28) )
  if (anyExceptions()) return
#line 29 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
#line 29 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual("Wind1VelY", InputFileData%OutList(2), &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 29) )
  if (anyExceptions()) return
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual("Wind1VelZ", InputFileData%OutList(3), &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 30) )
  if (anyExceptions()) return
#line 31 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"

    end subroutine


    !@test
    subroutine test_outputs_parsing_alternate()

        TYPE(FileInfoType)              :: InFileInfo
        TYPE(InflowWind_InputFile)      :: InputFileData 
        CHARACTER(1024)                 :: PriPath
        INTEGER(IntKi)                  :: TmpErrStat
        CHARACTER(ErrMsgLen)            :: TmpErrMsg

        PriPath = ""

        InFileInfo = getInputFileData()
        InFileInfo%Lines(51:53) = (/ &
            'True          SumPrint     - Print summary data to <RootName>.IfW.sum (flag)                                                                                   ', &
            '              OutList      - The next line(s) contains a list of output parameters.  See OutListParameters.xlsx for a listing of available output channels, (-)', &
            '"Wind1VelX,Wind1VelY"      - Wind velocity at point WindVxiList(1),WindVyiList(1),WindVziList(1).  X, Y, and Z direction components.                           ' &
        /)

        CALL InflowWind_ParseInputFileInfo(InputFileData , InFileInfo, PriPath, "inputFile.inp", "test.ech", TmpErrStat, TmpErrMsg)

#line 55 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 55) )
  if (anyExceptions()) return
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual(.TRUE.,      InputFileData%SumPrint, &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 56) )
  if (anyExceptions()) return
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual("Wind1VelX", InputFileData%OutList(1), &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 57) )
  if (anyExceptions()) return
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"
  call assertEqual("Wind1VelY", InputFileData%OutList(2), &
 & location=SourceLocation( &
 & 'test_outputs.F90', &
 & 58) )
  if (anyExceptions()) return
#line 59 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_outputs.F90"

    end subroutine

end module

module Wraptest_outputs
   use pFUnit_mod
   use test_outputs
   implicit none
   private

contains


end module Wraptest_outputs

function test_outputs_suite() result(suite)
   use pFUnit_mod
   use test_outputs
   use Wraptest_outputs
   type (TestSuite) :: suite

   suite = newTestSuite('test_outputs_suite')

   call suite%addTest(newTestMethod('test_outputs_parsing', test_outputs_parsing))

   call suite%addTest(newTestMethod('test_outputs_parsing_alternate', test_outputs_parsing_alternate))


end function test_outputs_suite

