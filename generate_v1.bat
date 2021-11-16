@ECHO OFF
:: Using hostsmgr v1 will take much more times because every sources will be stacked sequentially, unlike v2 and/or newer that
:: blend everything together, v1 is about diff and accuracy, while v2 is about speed combination and fast to commit.
cd /d %~dp0
echo Terminating previous instance...
taskkill /f /t /im hostsmgr.exe
del /f .\hosts.txt.bak
del /f .\hosts.txt.tmp
del /f .\generatelog*.txt
rd .\bin\hostsmgr\32\cache /s /q
rd .\bin\hostsmgr\64\cache /s /q
echo Revert old filename back to old format...
rename .\hosts_sources.dat sources.txt
rename .\hosts_userlist.dat userlist.txt
rename .\hosts_whitelist.dat whitelist.txt
copy /y sources.txt .\bin\hostsmgr\v1\32
copy /y userlist.txt .\bin\hostsmgr\v1\32
copy /y whitelist.txt .\bin\hostsmgr\v1\32
copy /y sources.txt .\bin\hostsmgr\v1\64
copy /y userlist.txt .\bin\hostsmgr\v1\64
copy /y whitelist.txt .\bin\hostsmgr\v1\64
echo Start first pass generator
.\bin\hostsmgr\v1\64\hostsmgr.exe /os linux /path .\hosts-v1.txt >generatelogv1-p1.txt
timeout 10
echo Start second pass generator (probably will be regenerate with existing cache)
.\bin\hostsmgr\v1\64\hostsmgr.exe /os linux /path .\hosts-v1.txt >generatelogv1-p2.txt
echo Reverting back to v2 filename...
rename .\sources.txt hosts_sources.dat
rename .\userlist.txt hosts_userlist.dat
rename .\whitelist.txt hosts_whitelist.dat
exit
