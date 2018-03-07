# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vicon_j: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ivicon_j:/home/ubuntu/catkin_ws/src/vicon_j/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vicon_j_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv" NAME_WE)
add_custom_target(_vicon_j_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon_j" "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg" NAME_WE)
add_custom_target(_vicon_j_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon_j" "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vicon_j
  "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_j
)

### Generating Services
_generate_srv_cpp(vicon_j
  "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_j
)

### Generating Module File
_generate_module_cpp(vicon_j
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_j
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vicon_j_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vicon_j_generate_messages vicon_j_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv" NAME_WE)
add_dependencies(vicon_j_generate_messages_cpp _vicon_j_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg" NAME_WE)
add_dependencies(vicon_j_generate_messages_cpp _vicon_j_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_j_gencpp)
add_dependencies(vicon_j_gencpp vicon_j_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_j_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vicon_j
  "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_j
)

### Generating Services
_generate_srv_lisp(vicon_j
  "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_j
)

### Generating Module File
_generate_module_lisp(vicon_j
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_j
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vicon_j_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vicon_j_generate_messages vicon_j_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv" NAME_WE)
add_dependencies(vicon_j_generate_messages_lisp _vicon_j_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg" NAME_WE)
add_dependencies(vicon_j_generate_messages_lisp _vicon_j_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_j_genlisp)
add_dependencies(vicon_j_genlisp vicon_j_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_j_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vicon_j
  "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_j
)

### Generating Services
_generate_srv_py(vicon_j
  "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_j
)

### Generating Module File
_generate_module_py(vicon_j
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_j
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vicon_j_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vicon_j_generate_messages vicon_j_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/srv/position.srv" NAME_WE)
add_dependencies(vicon_j_generate_messages_py _vicon_j_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/vicon_j/msg/vicon.msg" NAME_WE)
add_dependencies(vicon_j_generate_messages_py _vicon_j_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_j_genpy)
add_dependencies(vicon_j_genpy vicon_j_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_j_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_j)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_j
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vicon_j_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_j)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_j
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vicon_j_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_j)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_j\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_j
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vicon_j_generate_messages_py std_msgs_generate_messages_py)
endif()
