@echo off
title Zookeeper
set ZOOKEEPER_PATH=C:\kafka\bin\windows
cd %ZOOKEEPER_PATH%
zookeeper-server-start.bat .\..\..\config\zookeeper.properties