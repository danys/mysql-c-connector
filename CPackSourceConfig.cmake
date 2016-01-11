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


SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_IFW "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TXZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_CMAKE_GENERATOR "MinGW Makefiles")
SET(CPACK_COMPONENTS_ALL "Development;Documentation;Readme;SharedLibraries")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "TGZ")
SET(CPACK_IGNORE_FILES "\\.bzr/;\\.bzr-mysql;\\.bzrignore;CMakeCache\\.txt;cmake_dist\\.cmake;CPackSourceConfig\\.cmake;CPackConfig.cmake;/cmake_install\\.cmake;/CTestTestfile\\.cmake;/CMakeFiles/;/version_resources/;/_CPack_Packages/;$\\.gz;$\\.zip;$\\.bz2;/CMakeFiles/;/version_resources/;/_CPack_Packages/;scripts/make_binary_distribution$;scripts/mysql_config$;scripts/mysql_secure_installation$;scripts/mysql_server_config$;scripts/mysqld_multi$;scripts/mysqld_safe$;scripts/mysqldumpslow$;Makefile$;include/config\\.h$;include/my_config\\.h$;/autom4te\\.cache/;errmsg\\.sys$")
SET(CPACK_INSTALLED_DIRECTORIES "C:/Users/A0414/Downloads/mysqlconn;/")
SET(CPACK_INSTALL_CMAKE_PROJECTS "")
SET(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/LibMySQL")
SET(CPACK_MODULE_PATH "C:/Users/A0414/Downloads/mysqlconn/cmake")
SET(CPACK_NSIS_DISPLAY_NAME "LibMySQL 6.1.6")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
SET(CPACK_NSIS_PACKAGE_NAME "LibMySQL 6.1.6")
SET(CPACK_OUTPUT_CONFIG_FILE "C:/Users/A0414/Downloads/mysqlconn/CPackConfig.cmake")
SET(CPACK_PACKAGE_CONTACT "MySQL Release Engineering <mysql-build@oss.oracle.com>")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Program Files (x86)/CMake/share/cmake-3.4/Templates/CPack.GenericDescription.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "LibMySQL built using CMake")
SET(CPACK_PACKAGE_FILE_NAME "mysql-6.1.6")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "LibMySQL 6.1.6")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "LibMySQL 6.1.6")
SET(CPACK_PACKAGE_NAME "LibMySQL")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "Oracle Corporation")
SET(CPACK_PACKAGE_VERSION "6.1.6")
SET(CPACK_PACKAGE_VERSION_MAJOR "6")
SET(CPACK_PACKAGE_VERSION_MINOR "1")
SET(CPACK_PACKAGE_VERSION_PATCH "6")
SET(CPACK_RESOURCE_FILE_LICENSE "C:/Program Files (x86)/CMake/share/cmake-3.4/Templates/CPack.GenericLicense.txt")
SET(CPACK_RESOURCE_FILE_README "C:/Program Files (x86)/CMake/share/cmake-3.4/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files (x86)/CMake/share/cmake-3.4/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "TGZ")
SET(CPACK_SOURCE_IGNORE_FILES "\\.bzr/;\\.bzr-mysql;\\.bzrignore;CMakeCache\\.txt;cmake_dist\\.cmake;CPackSourceConfig\\.cmake;CPackConfig.cmake;/cmake_install\\.cmake;/CTestTestfile\\.cmake;/CMakeFiles/;/version_resources/;/_CPack_Packages/;$\\.gz;$\\.zip;$\\.bz2;/CMakeFiles/;/version_resources/;/_CPack_Packages/;scripts/make_binary_distribution$;scripts/mysql_config$;scripts/mysql_secure_installation$;scripts/mysql_server_config$;scripts/mysqld_multi$;scripts/mysqld_safe$;scripts/mysqldumpslow$;Makefile$;include/config\\.h$;include/my_config\\.h$;/autom4te\\.cache/;errmsg\\.sys$")
SET(CPACK_SOURCE_INSTALLED_DIRECTORIES "C:/Users/A0414/Downloads/mysqlconn;/")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Users/A0414/Downloads/mysqlconn/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "mysql-6.1.6")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
SET(CPACK_SOURCE_TXZ "")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "")
SET(CPACK_STRIP_FILES "")
SET(CPACK_SYSTEM_NAME "win64")
SET(CPACK_TOPLEVEL_TAG "win64-Source")
SET(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Users/A0414/Downloads/mysqlconn/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
