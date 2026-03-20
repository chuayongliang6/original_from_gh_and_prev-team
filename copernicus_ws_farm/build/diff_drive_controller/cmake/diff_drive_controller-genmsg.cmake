# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "diff_drive_controller: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(diff_drive_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv" NAME_WE)
add_custom_target(_diff_drive_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diff_drive_controller" "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv" ""
)

get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv" NAME_WE)
add_custom_target(_diff_drive_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diff_drive_controller" "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diff_drive_controller
)
_generate_srv_cpp(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diff_drive_controller
)

### Generating Module File
_generate_module_cpp(diff_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diff_drive_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(diff_drive_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(diff_drive_controller_generate_messages diff_drive_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_cpp _diff_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_cpp _diff_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diff_drive_controller_gencpp)
add_dependencies(diff_drive_controller_gencpp diff_drive_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diff_drive_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diff_drive_controller
)
_generate_srv_eus(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diff_drive_controller
)

### Generating Module File
_generate_module_eus(diff_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diff_drive_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(diff_drive_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(diff_drive_controller_generate_messages diff_drive_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_eus _diff_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_eus _diff_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diff_drive_controller_geneus)
add_dependencies(diff_drive_controller_geneus diff_drive_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diff_drive_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diff_drive_controller
)
_generate_srv_lisp(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diff_drive_controller
)

### Generating Module File
_generate_module_lisp(diff_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diff_drive_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(diff_drive_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(diff_drive_controller_generate_messages diff_drive_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_lisp _diff_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_lisp _diff_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diff_drive_controller_genlisp)
add_dependencies(diff_drive_controller_genlisp diff_drive_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diff_drive_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diff_drive_controller
)
_generate_srv_nodejs(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diff_drive_controller
)

### Generating Module File
_generate_module_nodejs(diff_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diff_drive_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(diff_drive_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(diff_drive_controller_generate_messages diff_drive_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_nodejs _diff_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_nodejs _diff_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diff_drive_controller_gennodejs)
add_dependencies(diff_drive_controller_gennodejs diff_drive_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diff_drive_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diff_drive_controller
)
_generate_srv_py(diff_drive_controller
  "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diff_drive_controller
)

### Generating Module File
_generate_module_py(diff_drive_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diff_drive_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(diff_drive_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(diff_drive_controller_generate_messages diff_drive_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Velocity.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_py _diff_drive_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/copernicus/copernicus_ws_farm/src/diff_drive_controller/srv/Acceleration.srv" NAME_WE)
add_dependencies(diff_drive_controller_generate_messages_py _diff_drive_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diff_drive_controller_genpy)
add_dependencies(diff_drive_controller_genpy diff_drive_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diff_drive_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diff_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diff_drive_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(diff_drive_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET diff_drive_controller_generate_messages_cpp)
  add_dependencies(diff_drive_controller_generate_messages_cpp diff_drive_controller_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diff_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diff_drive_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(diff_drive_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET diff_drive_controller_generate_messages_eus)
  add_dependencies(diff_drive_controller_generate_messages_eus diff_drive_controller_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diff_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diff_drive_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(diff_drive_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET diff_drive_controller_generate_messages_lisp)
  add_dependencies(diff_drive_controller_generate_messages_lisp diff_drive_controller_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diff_drive_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diff_drive_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(diff_drive_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET diff_drive_controller_generate_messages_nodejs)
  add_dependencies(diff_drive_controller_generate_messages_nodejs diff_drive_controller_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diff_drive_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diff_drive_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diff_drive_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(diff_drive_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET diff_drive_controller_generate_messages_py)
  add_dependencies(diff_drive_controller_generate_messages_py diff_drive_controller_generate_messages_py)
endif()
