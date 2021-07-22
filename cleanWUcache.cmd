@ECHO OFF
NET STOP bits
NET STOP wuauserv
ping 127.0.0.1 > nul
RD /S /Q %windir%SoftwareDistribution
ping 127.0.0.1 > nul
NET START wuauserv
NET START bits
ping 127.0.0.1 > nul
