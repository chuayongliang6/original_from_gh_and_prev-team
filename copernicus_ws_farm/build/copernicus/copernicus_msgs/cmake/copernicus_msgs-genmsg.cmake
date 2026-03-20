# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "copernicus_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Icopernicus_msgs:/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(copernicus_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg" NAME_WE)
add_custom_target(_copernicus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "copernicus_msgs" "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg" ""
)

get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg" NAME_WE)
add_custom_target(_copernicus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "copernicus_msgs" "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg" ""
)

get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg" NAME_WE)
add_custom_target(_copernicus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "copernicus_msgs" "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg" ""
)

get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg" NAME_WE)
add_custom_target(_copernicus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "copernicus_msgs" "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg" ""
)

get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg" NAME_WE)
add_custom_target(_copernicus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "copernicus_msgs" "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_cpp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_cpp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_cpp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_cpp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(copernicus_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(copernicus_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(copernicus_msgs_generate_messages copernicus_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_cpp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_cpp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_cpp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_cpp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_cpp _copernicus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(copernicus_msgs_gencpp)
add_dependencies(copernicus_msgs_gencpp copernicus_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS copernicus_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_eus(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_eus(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_eus(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_eus(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(copernicus_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(copernicus_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(copernicus_msgs_generate_messages copernicus_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_eus _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_eus _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_eus _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_eus _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_eus _copernicus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(copernicus_msgs_geneus)
add_dependencies(copernicus_msgs_geneus copernicus_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS copernicus_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_lisp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_lisp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_lisp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_lisp(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(copernicus_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(copernicus_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(copernicus_msgs_generate_messages copernicus_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_lisp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_lisp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_lisp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_lisp _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_lisp _copernicus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(copernicus_msgs_genlisp)
add_dependencies(copernicus_msgs_genlisp copernicus_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS copernicus_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_nodejs(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_nodejs(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_nodejs(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_nodejs(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(copernicus_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(copernicus_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(copernicus_msgs_generate_messages copernicus_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_nodejs _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_nodejs _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_nodejs _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_nodejs _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_nodejs _copernicus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(copernicus_msgs_gennodejs)
add_dependencies(copernicus_msgs_gennodejs copernicus_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS copernicus_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_py(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_py(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_py(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs
)
_generate_msg_py(copernicus_msgs
  "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(copernicus_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(copernicus_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(copernicus_msgs_generate_messages copernicus_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/RPM.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_py _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/BMS.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_py _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_py _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/Diagnostics.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_py _copernicus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/copernicus/copernicus_msgs/msg/SonarSensor.msg" NAME_WE)
add_dependencies(copernicus_msgs_generate_messages_py _copernicus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(copernicus_msgs_genpy)
add_dependencies(copernicus_msgs_genpy copernicus_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS copernicus_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/copernicus_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(copernicus_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/copernicus_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(copernicus_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/copernicus_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(copernicus_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/copernicus_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(copernicus_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/copernicus_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(copernicus_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
