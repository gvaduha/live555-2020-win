@Echo OFF
SETLOCAL
for %%I in (%0) do %%~dI
for %%I in (%0) do cd "%%~pI"

for /D %%I in (liveMedia,groupsock,UsageEnvironment,BasicUsageEnvironment,mediaServer,proxyServer,hlsProxy,testProgs) do (
  cd %%I
  del /Q %%I.mak
  type Makefile.head ..\win32config Makefile.tail > %%I.mak
  cd ..
)
ENDLOCAL
