
## On the data publishing computer
1. open PowerShell
2. navigate to sensors-workflow directory
	1. probably `cd C:\Users\engr-ugaif\IF2022-ros-sensors-workflow`
2. navigate to ros-ecosystem directory
	1. `cd ros-ecosystem`
3. run the install script 
	1. `.\install\setup.ps1`
4. build the ROS2 packages (make sure you are in the ros-ecosystem directory)
	1. `colcon build --merge-install`
	2. if you want to do a specific package, add `--packages-select package_name` to the command
		1. i.e. `colcon build --merge-install --packages-select webcam_capture`
5. run the package!
	1. `ros2 run webcam_capture publisher`
	2. in general, it's `ros2 run package_name executable_name`

## On the data processing computer
1. open PowerShell
2. navigate to sensors-workflow directory
	1. probably `cd C:\Users\engr-ugaif\IF2022-ros-sensors-workflow`
3. run the install script 
	1. `.ros-ecosystem\install\setup.ps1`
4. run the data processing script
	1. `python3 .\scripts\hand_detector.py`

## Notes
- The way ROS2 works is that you have to activate the environment on a per-session basis. Every time you open up a new terminal/powershell window you have to run `.\install\setup.ps1` (or for cmd run `.\install\setup.bat`)
- Every time you change the code for a package you have to build the package. This can be done by `colcon build --merge-install` (which builds every packages)
- If you want to make your own package, run `ros2 pkg create --build-type ament_python --node-name my_executable_name my_package_name`
- Make sure to keep track of where you're running commands
	- If running the build command, make sure you're in the `ros-ecosystem` directory. Otherwise, unwanted install, log, and build folders are created in random directories.
