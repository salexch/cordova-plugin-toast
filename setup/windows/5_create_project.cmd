@echo off 
::set APP_NAME=TestApp
set APP_NAME=%1
echo %APP_NAME%
cordova create "%APP_NAME%" & cd "%APP_NAME%" & xcopy /y /s "%~dp0grunt-cordova-sectv\sample" "%~dp0%APP_NAME%" & npm install "%~dp0grunt-cordova-sectv"^
& npm install^
& cordova platform add browser^
& cordova plugin add cordova-plugin-device^
& cordova plugin add cordova-plugin-network-information^
& cordova plugin add cordova-plugin-globalization^
& cordova plugin add "%~dp0cordova-plugin-toast"