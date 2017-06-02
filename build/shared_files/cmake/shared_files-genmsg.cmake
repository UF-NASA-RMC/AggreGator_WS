# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "shared_files: 6 messages, 2 services")

set(MSG_I_FLAGS "-Ishared_files:/home/issa/AGGREGATOR_WS/src/shared_files/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(shared_files_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg" ""
)

get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg" ""
)

get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv" ""
)

get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg" ""
)

get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv" ""
)

get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg" ""
)

get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg" ""
)

get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)

### Generating Services
_generate_srv_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_srv_cpp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)

### Generating Module File
_generate_module_cpp(shared_files
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(shared_files_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(shared_files_generate_messages shared_files_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shared_files_gencpp)
add_dependencies(shared_files_gencpp shared_files_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shared_files_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)

### Generating Services
_generate_srv_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_srv_lisp(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)

### Generating Module File
_generate_module_lisp(shared_files
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(shared_files_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(shared_files_generate_messages shared_files_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shared_files_genlisp)
add_dependencies(shared_files_genlisp shared_files_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shared_files_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)

### Generating Services
_generate_srv_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_srv_py(shared_files
  "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)

### Generating Module File
_generate_module_py(shared_files
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(shared_files_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(shared_files_generate_messages shared_files_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Bucket.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Drive.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2CRegister.srv" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Ladder.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/srv/ReadI2C.srv" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/Angle.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2C.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/issa/AGGREGATOR_WS/src/shared_files/msg/WriteI2CRegister.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shared_files_genpy)
add_dependencies(shared_files_genpy shared_files_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shared_files_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(shared_files_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(shared_files_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(shared_files_generate_messages_py std_msgs_generate_messages_py)
endif()
