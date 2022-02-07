# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit;/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/share/cmake-3.18/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "pFUnit built using CMake")
set(CPACK_GENERATOR "ZIP")
set(CPACK_INCLUDE_TOPLEVEL_DIRECTORY "FALSE")
set(CPACK_INSTALL_CMAKE_PROJECTS "/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build;pFUnit;ALL;/")
set(CPACK_INSTALL_PREFIX "/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit")
set(CPACK_MODULE_PATH "/Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/include/cmake/Modules/")
set(CPACK_NSIS_DISPLAY_NAME "pFUnit 3.1.1")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "pFUnit 3.1.1")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OSX_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "pFUnit developers <pfunit-developers@list.sourceforge.net>")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/share/cmake-3.18/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "pFUnit")
set(CPACK_PACKAGE_FILE_NAME "pFUnit-3.1.1-Darwin")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "pFUnit 3.1.1")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "pFUnit 3.1.1")
set(CPACK_PACKAGE_NAME "pFUnit")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "3.1.1")
set(CPACK_PACKAGE_VERSION_MAJOR "3")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "1")
set(CPACK_RESOURCE_FILE_LICENSE "/Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/share/cmake-3.18/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/share/cmake-3.18/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/share/cmake-3.18/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_SYSTEM_NAME "Darwin")
set(CPACK_TOPLEVEL_TAG "Darwin")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()