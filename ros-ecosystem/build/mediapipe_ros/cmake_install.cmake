# Install script for directory: C:/Users/engr-ugaif/ros2_ws/src/ros2_mediapipe

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/engr-ugaif/ros2_ws/install/mediapipe_ros")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros/environment" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_environment_hooks/pythonpath.bat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros/environment" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Lib/site-packages/mediapipe_ros-0.1.0-py3.10.egg-info" TYPE DIRECTORY FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_python/mediapipe_ros/mediapipe_ros.egg-info/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Lib/site-packages/mediapipe_ros" TYPE DIRECTORY FILES "C:/Users/engr-ugaif/ros2_ws/src/ros2_mediapipe/mediapipe_ros/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "C:/opt/ros/humble/x64/python3.exe" "-m" "compileall"
        "C:/Users/engr-ugaif/ros2_ws/install/mediapipe_ros/Lib/site-packages/mediapipe_ros"
      )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mediapipe_ros" TYPE PROGRAM RENAME "pose_detector" FILES "C:/Users/engr-ugaif/ros2_ws/src/ros2_mediapipe/scripts/pose_detector.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/mediapipe_ros")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/mediapipe_ros")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros/environment" TYPE FILE FILES "C:/opt/ros/humble/x64/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.bat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros/environment" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros/environment" TYPE FILE FILES "C:/opt/ros/humble/x64/share/ament_cmake_core/cmake/environment_hooks/environment/path.bat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros/environment" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_environment_hooks/path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_environment_hooks/local_setup.bat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_environment_hooks/package.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_index/share/ament_index/resource_index/packages/mediapipe_ros")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros/cmake" TYPE FILE FILES
    "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_core/mediapipe_rosConfig.cmake"
    "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/ament_cmake_core/mediapipe_rosConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mediapipe_ros" TYPE FILE FILES "C:/Users/engr-ugaif/ros2_ws/src/ros2_mediapipe/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/engr-ugaif/ros2_ws/build/mediapipe_ros/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
