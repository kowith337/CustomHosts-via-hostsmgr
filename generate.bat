@ECHO OFF
del hosts.txt.bak
del hosts.txt.tmp
rd .\bin\hostsmgr\32\cache /s /q
rd .\bin\hostsmgr\64\cache /s /q
taskkill /f /t /im hostsmgr.exe
.\bin\hostsmgr\64\hostsmgr.exe /path .\hosts.txt
exit
