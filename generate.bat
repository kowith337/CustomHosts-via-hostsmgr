@ECHO OFF
echo Terminating previous instance...
taskkill /f /t /im hostsmgr.exe
del hosts.txt.bak
del hosts.txt.tmp
del generatelog1.txt
del generatelog2.txt
rd .\bin\hostsmgr\32\cache /s /q
rd .\bin\hostsmgr\64\cache /s /q
echo Start first pass generator
.\bin\hostsmgr\64\hostsmgr.exe /os linux /path .\hosts.txt >generatelog1.txt
timeout 10
echo Start second pass generator (probably will be regenerate with existing cache)
.\bin\hostsmgr\64\hostsmgr.exe /os linux /path .\hosts.txt >generatelog2.txt
exit
