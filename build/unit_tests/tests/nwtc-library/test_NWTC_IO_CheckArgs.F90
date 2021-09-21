module test_NWTC_IO_CheckArgs

    use pFUnit_mod
    use NWTC_IO
    use nwtc_library_test_tools
    
    implicit none

contains

    ! PASSING CASES

    ! ************************************************************************
    ! To read the input file, a default may be provided and a user-specified
    ! input file may be used instead.

    !@test
    subroutine test_input_file_user_specified()

        ! executable.exe FileName

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(1))
        argument_array = (/      &
            "first_arg.txt   "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 34 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 34) )
  if (anyExceptions()) return
#line 35 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 35 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 35) )
  if (anyExceptions()) return
#line 36 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 36 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 36) )
  if (anyExceptions()) return
#line 37 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 37 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 37) )
  if (anyExceptions()) return
#line 38 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    !@test
    subroutine test_input_file_default()

        ! executable.exe

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = "default.txt"
        allocate(argument_array(0))
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 55 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "default.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 55) )
  if (anyExceptions()) return
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 56 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 56) )
  if (anyExceptions()) return
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 57 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 57) )
  if (anyExceptions()) return
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 58 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 58) )
  if (anyExceptions()) return
#line 59 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    !@test
    subroutine test_input_file_default_user_specified()

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = "default.txt"
        allocate(argument_array(1))
        argument_array = (/      &
            "first_arg.txt   "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 77 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 77) )
  if (anyExceptions()) return
#line 78 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 78 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 78) )
  if (anyExceptions()) return
#line 79 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 79 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 79) )
  if (anyExceptions()) return
#line 80 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 80 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 80) )
  if (anyExceptions()) return
#line 81 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    ! ************************************************************************
    ! Given a restart flag, the flag should be parsed along with the input
    ! file and second argument regardless of the position of the flag.
    ! The first argument is optional in this case.

    !@test
    subroutine test_restart_flag1()

        ! executable.exe -Flag FileName Arg2

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(3))
        argument_array = (/      &
            "-restart        ",  &
            "first_arg.txt   ",  &
            "second_arg      "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 108 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 108) )
  if (anyExceptions()) return
#line 109 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 109 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 109) )
  if (anyExceptions()) return
#line 110 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 110 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "second_arg", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 110) )
  if (anyExceptions()) return
#line 111 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 111 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "RESTART", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 111) )
  if (anyExceptions()) return
#line 112 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    !@test
    subroutine test_restart_flag2()

        ! executable.exe FileName -Flag Arg2

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(3))
        argument_array = (/      &
            "first_arg.txt   ",  &
            "-restart        ",  &
            "second_arg      "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 134 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 134) )
  if (anyExceptions()) return
#line 135 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 135 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 135) )
  if (anyExceptions()) return
#line 136 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 136 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "second_arg", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 136) )
  if (anyExceptions()) return
#line 137 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 137 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "RESTART", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 137) )
  if (anyExceptions()) return
#line 138 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    !@test
    subroutine test_restart_flag3()

        ! executable.exe -restart Arg1

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(2))
        argument_array = (/      &
            "-restart        ",  &
            "first_arg.txt   "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 159 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 159) )
  if (anyExceptions()) return
#line 160 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 160 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 160) )
  if (anyExceptions()) return
#line 161 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 161 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 161) )
  if (anyExceptions()) return
#line 162 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 162 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "RESTART", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 162) )
  if (anyExceptions()) return
#line 163 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    ! ************************************************************************
    ! The second argument should be returned when provided even outside
    ! of the restart functionality.

    !@test
    subroutine test_second_argument()

        ! executable.exe FileName Arg2

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(2))
        argument_array = (/      &
            "first_arg.txt   ",  &
            "second_arg      "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 188 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 188) )
  if (anyExceptions()) return
#line 189 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 189 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 189) )
  if (anyExceptions()) return
#line 190 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 190 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "second_arg", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 190) )
  if (anyExceptions()) return
#line 191 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 191 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 191) )
  if (anyExceptions()) return
#line 192 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    ! ************************************************************************
    ! The help flag in any position should show the help prompt and exit
    ! normally.

    !@test
    subroutine test_help1()

        ! executable.exe -Flag FileName

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(2))
        argument_array = (/      &
            "-h              ",  &
            "first_arg.txt   "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 217 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 217) )
  if (anyExceptions()) return
#line 218 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 218 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 218) )
  if (anyExceptions()) return
#line 219 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 219 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 219) )
  if (anyExceptions()) return
#line 220 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 220 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "H", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 220) )
  if (anyExceptions()) return
#line 221 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    !@test
    subroutine test_help2()

        ! executable.exe FileName -Flag 

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(2))
        argument_array = (/      &
            "first_arg.txt   ",  &
            "-h              "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 242 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 242) )
  if (anyExceptions()) return
#line 243 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 243 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 243) )
  if (anyExceptions()) return
#line 244 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 244 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 244) )
  if (anyExceptions()) return
#line 245 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 245 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "H", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 245) )
  if (anyExceptions()) return
#line 246 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    ! ************************************************************************
    ! The version flag in any position should show the version info and exit
    ! normally.

    !@test
    subroutine test_version1()

        ! executable.exe -v FileName

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(2))
        argument_array = (/      &
            "-v              ",  &
            "first_arg.txt   "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 271 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 271) )
  if (anyExceptions()) return
#line 272 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 272 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 272) )
  if (anyExceptions()) return
#line 273 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 273 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 273) )
  if (anyExceptions()) return
#line 274 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 274 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "V", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 274) )
  if (anyExceptions()) return
#line 275 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    !@test
    subroutine test_version2()

        ! executable.exe FileName -VERSION 

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(2))
        argument_array = (/      &
            "first_arg.txt   ",  &
            "-VERSION        "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 296 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 296) )
  if (anyExceptions()) return
#line 297 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 297 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 0, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 297) )
  if (anyExceptions()) return
#line 298 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 298 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 298) )
  if (anyExceptions()) return
#line 299 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 299 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "VERSION", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 299) )
  if (anyExceptions()) return
#line 300 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    ! FAILING CASES

    ! ************************************************************************
    ! No arguments and no default input file should exit with an error

    !@test
    subroutine test_no_args_no_default()

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(0))
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 320 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 320) )
  if (anyExceptions()) return
#line 321 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 321 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 4, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 321) )
  if (anyExceptions()) return
#line 322 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 322 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 322) )
  if (anyExceptions()) return
#line 323 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 323 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 323) )
  if (anyExceptions()) return
#line 324 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    ! ************************************************************************
    ! An unsupported flag should exit with an error

    !@test
    subroutine test_unsupported_flag()

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(2))
        argument_array = (/      &
            "first_arg.txt   ",  &
            "-flag           "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 346 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "first_arg.txt", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 346) )
  if (anyExceptions()) return
#line 347 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 347 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 4, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 347) )
  if (anyExceptions()) return
#line 348 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 348 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 348) )
  if (anyExceptions()) return
#line 349 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 349 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "FLAG", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 349) )
  if (anyExceptions()) return
#line 350 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

    ! ************************************************************************
    ! The restart flag requires at least one additional argument

    !@test
    subroutine test_restart_bad_syntax()

        character(1024) :: filename, second_argument, flag
        integer(IntKi) :: error_status
        character(16), dimension(:), allocatable :: argument_array

        filename = ""
        allocate(argument_array(1))
        argument_array = (/      &
            "-restart        "   &
        /)
        call hide_terminal_output()
        call CheckArgs( filename, error_status, second_argument, flag, argument_array )
        call show_terminal_output()
#line 371 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", filename , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 371) )
  if (anyExceptions()) return
#line 372 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 372 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( 4, error_status , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 372) )
  if (anyExceptions()) return
#line 373 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 373 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "", second_argument , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 373) )
  if (anyExceptions()) return
#line 374 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
#line 374 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
  call assertEqual( "RESTART", flag , &
 & location=SourceLocation( &
 & 'test_NWTC_IO_CheckArgs.F90', &
 & 374) )
  if (anyExceptions()) return
#line 375 "/Users/abarker/Desktop/Fast/openfast/unit_tests/../modules/nwtc-library/tests/test_NWTC_IO_CheckArgs.F90"
        deallocate(argument_array)
    end subroutine

end module

module Wraptest_NWTC_IO_CheckArgs
   use pFUnit_mod
   use test_NWTC_IO_CheckArgs
   implicit none
   private

contains


end module Wraptest_NWTC_IO_CheckArgs

function test_NWTC_IO_CheckArgs_suite() result(suite)
   use pFUnit_mod
   use test_NWTC_IO_CheckArgs
   use Wraptest_NWTC_IO_CheckArgs
   type (TestSuite) :: suite

   suite = newTestSuite('test_NWTC_IO_CheckArgs_suite')

   call suite%addTest(newTestMethod('test_input_file_user_specified', test_input_file_user_specified))

   call suite%addTest(newTestMethod('test_input_file_default', test_input_file_default))

   call suite%addTest(newTestMethod('test_input_file_default_user_specified', test_input_file_default_user_specified))

   call suite%addTest(newTestMethod('test_restart_flag1', test_restart_flag1))

   call suite%addTest(newTestMethod('test_restart_flag2', test_restart_flag2))

   call suite%addTest(newTestMethod('test_restart_flag3', test_restart_flag3))

   call suite%addTest(newTestMethod('test_second_argument', test_second_argument))

   call suite%addTest(newTestMethod('test_help1', test_help1))

   call suite%addTest(newTestMethod('test_help2', test_help2))

   call suite%addTest(newTestMethod('test_version1', test_version1))

   call suite%addTest(newTestMethod('test_version2', test_version2))

   call suite%addTest(newTestMethod('test_no_args_no_default', test_no_args_no_default))

   call suite%addTest(newTestMethod('test_unsupported_flag', test_unsupported_flag))

   call suite%addTest(newTestMethod('test_restart_bad_syntax', test_restart_bad_syntax))


end function test_NWTC_IO_CheckArgs_suite

