@ECHO OFF
cd /d %~dp0
echo Terminating previous instance...
taskkill /f /t /im hostsmgr.exe
del /f .\hosts.txt.bak
del /f .\hosts.txt.tmp
del /f .\generatelog*.txt
rd .\bin\hostsmgr\32\cache /s /q
rd .\bin\hostsmgr\64\cache /s /q
echo Reverting back to v2 filename...
rename .\sources.txt hosts_sources.dat
rename .\userlist.txt hosts_userlist.dat
rename .\whitelist.txt hosts_whitelist.dat
copy /y *.dat .\bin\hostsmgr\32
copy /y *.dat .\bin\hostsmgr\64
echo Start first pass generator
.\bin\hostsmgr\64\hostsmgr.exe /os linux /path .\hosts.txt
timeout 10
echo Start second pass generator (probably will be regenerate with existing cache)
.\bin\hostsmgr\64\hostsmgr.exe /os linux /path .\hosts.txt
pause
exit
