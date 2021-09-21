module test_uniform_wind

    use pFUnit_mod
    use ifw_test_tools
    use InflowWind
    use InflowWind_Subs
    use InflowWind_Types

    implicit none

contains

    !@test
    subroutine test_uniform_wind_input()

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

#line 30 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 30) )
  if (anyExceptions()) return
#line 31 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 31 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(trim(expected), InputFileData%Uniform_FileName, &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 31) )
  if (anyExceptions()) return
#line 32 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 32 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(90, InputFileData%Uniform_RefHt, &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 32) )
  if (anyExceptions()) return
#line 33 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 33 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(125.88, InputFileData%Uniform_RefLength, &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 33) )
  if (anyExceptions()) return
#line 34 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"

    end subroutine

    !@test
    subroutine test_uniform_wind_direct_data()

            ! Types for setting up module
        TYPE(InflowWind_InitInputType)                     :: InitInp           !< Input data for initialization
        TYPE(InflowWind_InputType)                         :: InputGuess        !< An initial guess for the input; the input mesh must be defined
        TYPE(InflowWind_ParameterType)                     :: p                 !< Parameters
        TYPE(InflowWind_ContinuousStateType)               :: ContStates        !< Initial continuous states
        TYPE(InflowWind_DiscreteStateType)                 :: DiscStates        !< Initial discrete states
        TYPE(InflowWind_ConstraintStateType)               :: ConstrStateGuess  !< Initial guess of the constraint states
        TYPE(InflowWind_OtherStateType)                    :: OtherStates       !< Initial other/optimization states
        TYPE(InflowWind_OutputType)                        :: y                 !< Initial output (outputs are not calculated; only the output mesh is initialized)
        TYPE(InflowWind_MiscVarType)                       :: m                 !< Misc variables for optimization (not copied in glue code)
        REAL(DbKi)                                         :: TimeInterval      !< Coupling time interval in seconds: InflowWind does not change this.
        TYPE(InflowWind_InitOutputType)                    :: InitOutData 

            ! Variables for testing
        INTEGER                         :: ErrStat
        CHARACTER(ErrMsgLen)            :: ErrMsg
        TYPE(FileInfoType)              :: InFileInfo
        TYPE(FileInfoType)              :: WindType2Data
        CHARACTER(1024), DIMENSION(6)   :: data = (/ &
            '! Wind file for sheared 18 m/s wind with 30 degree direction.    ', &
            '! Time Wind Wind  Vert. Horiz. Vert. LinV Gust                   ', &
            '!      Speed Dir Speed Shear Shear Shear Speed                   ', &
            ' 0.0   12.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0                          ', &
            ' 0.1   12.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0                          ', &
            ' 999.9 12.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0                          ' &
        /)

            ! Error handling
        INTEGER(IntKi)                                        :: TmpErrStat
        CHARACTER(ErrMsgLen)                                  :: TmpErrMsg         !< temporary error message

        InFileInfo = getInputFileDataWindType2()
        CALL InitFileInfo(data, WindType2Data, ErrStat, ErrMsg)

      ! For diagnostic purposes, the following can be used to display the contents
      ! of the InFileInfo data structure.
      ! call Print_FileInfo_Struct( CU, InFileInfo ) ! CU is the screen -- different number on different systems.

            ! Variable definitions
        InitInp%InputFileName = ""
        InitInp%NumWindPoints = 5
        InitInp%UseInputFile = .FALSE.
        InitInp%RootName = ""
        InitInp%PassedFileData = InFileInfo
        InitInp%WindType2UseInputFile = .FALSE.
        InitInp%WindType2Data = WindType2Data

        CALL InflowWind_Init( InitInp, InputGuess, p, ContStates, DiscStates, &
                        ConstrStateGuess, OtherStates, y, m, TimeInterval, &
                        InitOutData, TmpErrStat, TmpErrMsg)

            ! Results
#line 92 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(0, TmpErrStat, message='Error message: '//trim(TmpErrMsg)//NewLine//'ErrStat: ', &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 92) )
  if (anyExceptions()) return
#line 93 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 93 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(0.0, p%UniformWind%TData(1), &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 93) )
  if (anyExceptions()) return
#line 94 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 94 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(0.1, p%UniformWind%TData(2), &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 94) )
  if (anyExceptions()) return
#line 95 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 95 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(999.9, p%UniformWind%TData(3), &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 95) )
  if (anyExceptions()) return
#line 96 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"

#line 97 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(12.0, p%UniformWind%V(1), &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 97) )
  if (anyExceptions()) return
#line 98 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 98 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(12.0, p%UniformWind%V(2), &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 98) )
  if (anyExceptions()) return
#line 99 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
#line 99 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"
  call assertEqual(12.0, p%UniformWind%V(3), &
 & location=SourceLocation( &
 & 'test_uniform_wind.F90', &
 & 99) )
  if (anyExceptions()) return
#line 100 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/inflowwind/tests/test_uniform_wind.F90"

    end subroutine

end module

module Wraptest_uniform_wind
   use pFUnit_mod
   use test_uniform_wind
   implicit none
   private

contains


end module Wraptest_uniform_wind

function test_uniform_wind_suite() result(suite)
   use pFUnit_mod
   use test_uniform_wind
   use Wraptest_uniform_wind
   type (TestSuite) :: suite

   suite = newTestSuite('test_uniform_wind_suite')

   call suite%addTest(newTestMethod('test_uniform_wind_input', test_uniform_wind_input))

   call suite%addTest(newTestMethod('test_uniform_wind_direct_data', test_uniform_wind_direct_data))


end function test_uniform_wind_suite

