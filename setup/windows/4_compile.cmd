@echo off
cd %~dp0cordova-js & grunt compile:sectv-orsay compile:sectv-tizen &^
cd %~dp0ccordova-plugin-toast & grunt compile:sectv-orsay compile:sectv-tizen
