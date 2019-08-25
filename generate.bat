@ECHO OFF
del hosts.txt.bak
del hosts.txt.tmp
del generatelog.txt
rd .\bin\hostsmgr\32\cache /s /q
rd .\bin\hostsmgr\64\cache /s /q
taskkill /f /t /im hostsmgr.exe
echo Wait until I can connect to internet properly...
timeout 30
echo Start first pass generator
.\bin\hostsmgr\64\hostsmgr.exe /path .\hosts.txt >generatelog1.txt
timeout 10
echo Start second pass generator (probably will be regenerated with existing cache)
.\bin\hostsmgr\64\hostsmgr.exe /path .\hosts.txt >generatelog2.txt
exit
