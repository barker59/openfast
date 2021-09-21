# Install script for directory: /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/GNU.mk"
    "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/IBM.mk"
    "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/INTEL.mk"
    "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/NAG.mk"
    "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/PGI.mk"
    "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/extensions.mk"
    "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/driver.F90"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "base.mk" FILES "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/base-install.mk")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/include/include/configuration.mk")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/TestUtil.F90")
endif()

