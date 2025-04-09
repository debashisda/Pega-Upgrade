@echo off
title Kafka
set KAFKA_PATH=C:\kafka\bin\windows
cd %KAFKA_PATH%
kafka-server-start.bat ..\..\config\server.properties