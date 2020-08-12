@Echo OFF
SETLOCAL
for %%I in (%0) do %%~dI
for %%I in (%0) do cd "%%~pI"

for /D %%I in (liveMedia,groupsock,UsageEnvironment,BasicUsageEnvironment,WindowsAudioInputDevice,mediaServer,proxyServer,hlsProxy,testProgs) do (
  cd %%I
  cd
  nmake /B -f %%I.mak
  cd ..
)
ENDLOCAL
