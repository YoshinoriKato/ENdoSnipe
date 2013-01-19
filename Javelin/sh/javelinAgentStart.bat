@echo off

setlocal

set JAVELIN_JAR="%~dp0..\lib\javelin.jar"

if "%JAVA_HOME%"=="" (
	rem JAVA_HOME���ݒ肳��Ă��Ȃ���΁A�f�t�H���g��java���g�p����
	set JAVA_CMD=java
) else (
	rem JAVA_HOME���ݒ肳��Ă���΁AJAVA_HOME�z����java���g�p����
	set JAVA_CMD="%JAVA_HOME%\bin\java"
)

%JAVA_CMD% -Xmx64m -Xms64m -javaagent:%JAVELIN_JAR% -cp %JAVELIN_JAR% jp.co.acroquest.endosnipe.javelin.agent.AgentMain

endlocal