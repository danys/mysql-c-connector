# Copyright (c) 2009 Sun Microsystems, Inc.
# Use is subject to license terms.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA 

# This script merges many static libraries into
# one big library on Unix.
SET(TARGET_LOCATION "C:/Users/A0414/Downloads/mysqlconn/libmysql/libmysqlclient.a")
SET(TARGET "mysqlclient")
SET(STATIC_LIBS "C:/Users/A0414/Downloads/mysqlconn/libmysql/libclientlib.a;C:/Users/A0414/Downloads/mysqlconn/dbug/libdbug.a;C:/Users/A0414/Downloads/mysqlconn/strings/libstrings.a;C:/Users/A0414/Downloads/mysqlconn/vio/libvio.a;C:/Users/A0414/Downloads/mysqlconn/mysys/libmysys.a;C:/Users/A0414/Downloads/mysqlconn/mysys_ssl/libmysys_ssl.a;C:/Users/A0414/Downloads/mysqlconn/zlib/libzlib.a;C:/Users/A0414/Downloads/mysqlconn/extra/yassl/libyassl.a;C:/Users/A0414/Downloads/mysqlconn/extra/yassl/taocrypt/libtaocrypt.a;C:/Users/A0414/Downloads/mysqlconn/libmysql/authentication_win/libauth_win_client.a")
SET(CMAKE_CURRENT_BINARY_DIR "C:/Users/A0414/Downloads/mysqlconn/libmysql")
SET(CMAKE_AR "C:/Program Files/mingw-w64/x86_64-5.2.0-posix-seh-rt_v4-rev1/mingw64/bin/ar.exe")
SET(CMAKE_RANLIB "C:/Program Files/mingw-w64/x86_64-5.2.0-posix-seh-rt_v4-rev1/mingw64/bin/ranlib.exe")


SET(TEMP_DIR ${CMAKE_CURRENT_BINARY_DIR}/merge_archives_${TARGET})
MAKE_DIRECTORY(${TEMP_DIR})
# Extract each archive to its own subdirectory(avoid object filename clashes)
FOREACH(LIB ${STATIC_LIBS})
  GET_FILENAME_COMPONENT(NAME_NO_EXT ${LIB} NAME_WE)
  SET(TEMP_SUBDIR ${TEMP_DIR}/${NAME_NO_EXT})
  MAKE_DIRECTORY(${TEMP_SUBDIR})
  EXECUTE_PROCESS(
    COMMAND ${CMAKE_AR} -x ${LIB}
    WORKING_DIRECTORY ${TEMP_SUBDIR}
  )

  FILE(GLOB_RECURSE LIB_OBJECTS "${TEMP_SUBDIR}/*")
  SET(OBJECTS ${OBJECTS} ${LIB_OBJECTS})
ENDFOREACH()

# Use relative paths, makes command line shorter.
GET_FILENAME_COMPONENT(ABS_TEMP_DIR ${TEMP_DIR} ABSOLUTE)
FOREACH(OBJ ${OBJECTS})
  FILE(RELATIVE_PATH OBJ ${ABS_TEMP_DIR} ${OBJ})
  FILE(TO_NATIVE_PATH ${OBJ} OBJ)
  SET(ALL_OBJECTS ${ALL_OBJECTS} ${OBJ})
ENDFOREACH()

FILE(TO_NATIVE_PATH ${TARGET_LOCATION} ${TARGET_LOCATION})
# Now pack the objects into library with ar.
EXECUTE_PROCESS(
  COMMAND ${CMAKE_AR} -r ${TARGET_LOCATION} ${ALL_OBJECTS}
  WORKING_DIRECTORY ${TEMP_DIR}
)
EXECUTE_PROCESS(
  COMMAND ${CMAKE_RANLIB} ${TARGET_LOCATION}
  WORKING_DIRECTORY ${TEMP_DIR}
)

# Cleanup
FILE(REMOVE_RECURSE ${TEMP_DIR})
