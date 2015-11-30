# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cloud_robot: 1 messages, 1 services")

set(MSG_I_FLAGS "-Icloud_robot:/home/abner0908/catkin_ws/src/cloud_robot/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cloud_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg" NAME_WE)
add_custom_target(_cloud_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cloud_robot" "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg" ""
)

get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv" NAME_WE)
add_custom_target(_cloud_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cloud_robot" "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cloud_robot
)

### Generating Services
_generate_srv_cpp(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cloud_robot
)

### Generating Module File
_generate_module_cpp(cloud_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cloud_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cloud_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cloud_robot_generate_messages cloud_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg" NAME_WE)
add_dependencies(cloud_robot_generate_messages_cpp _cloud_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv" NAME_WE)
add_dependencies(cloud_robot_generate_messages_cpp _cloud_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cloud_robot_gencpp)
add_dependencies(cloud_robot_gencpp cloud_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cloud_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cloud_robot
)

### Generating Services
_generate_srv_eus(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cloud_robot
)

### Generating Module File
_generate_module_eus(cloud_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cloud_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cloud_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cloud_robot_generate_messages cloud_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg" NAME_WE)
add_dependencies(cloud_robot_generate_messages_eus _cloud_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv" NAME_WE)
add_dependencies(cloud_robot_generate_messages_eus _cloud_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cloud_robot_geneus)
add_dependencies(cloud_robot_geneus cloud_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cloud_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cloud_robot
)

### Generating Services
_generate_srv_lisp(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cloud_robot
)

### Generating Module File
_generate_module_lisp(cloud_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cloud_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cloud_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cloud_robot_generate_messages cloud_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg" NAME_WE)
add_dependencies(cloud_robot_generate_messages_lisp _cloud_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv" NAME_WE)
add_dependencies(cloud_robot_generate_messages_lisp _cloud_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cloud_robot_genlisp)
add_dependencies(cloud_robot_genlisp cloud_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cloud_robot_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cloud_robot
)

### Generating Services
_generate_srv_py(cloud_robot
  "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cloud_robot
)

### Generating Module File
_generate_module_py(cloud_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cloud_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cloud_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cloud_robot_generate_messages cloud_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/msg/Complex.msg" NAME_WE)
add_dependencies(cloud_robot_generate_messages_py _cloud_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abner0908/catkin_ws/src/cloud_robot/srv/WordCountType.srv" NAME_WE)
add_dependencies(cloud_robot_generate_messages_py _cloud_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cloud_robot_genpy)
add_dependencies(cloud_robot_genpy cloud_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cloud_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cloud_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cloud_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(cloud_robot_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cloud_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cloud_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(cloud_robot_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cloud_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cloud_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(cloud_robot_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cloud_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cloud_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cloud_robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(cloud_robot_generate_messages_py std_msgs_generate_messages_py)
