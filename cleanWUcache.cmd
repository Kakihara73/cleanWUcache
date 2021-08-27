@ECHO OFF
NET STOP bits
NET STOP wuauserv
ping 127.0.0.1 > nul
IF EXIST %windir%\SoftwareDistribution.OLD RD /S /Q %windir%\SoftwareDistribution.OLD
CD %windir%
REN SoftwareDistribution SoftwareDistribution.OLD
ping 127.0.0.1 > nul
NET START wuauserv
NET START bits
ping 127.0.0.1 > nul
