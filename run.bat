@echo off
@start http://localhost:3000/
@npm run start 2>nul

if errorlevel 1 (
	echo Please wait, the necessary modules are now being installed.
	echo= 
	@npm install  2>nul
	if errorlevel 1 (
		echo= 
		echo open server error, please check node module and npm module is installed.
		@start https://nodejs.org/ja/download/
		pause
	)
	
	@npm run start 2>nul
)