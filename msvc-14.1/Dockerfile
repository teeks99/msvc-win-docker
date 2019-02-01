FROM microsoft/windowsservercore:ltsc2016

RUN mkdir C:\tmp

ADD https://aka.ms/vs/15/release/vs_buildtools.exe C:\tmp\vs_buildtools.exe
RUN C:\tmp\Install.cmd C:\tmp\vs_buildtools.exe --quiet --wait --norestart --nocache `
    --channelUri C:\TEMP\VisualStudio.chman `
    --installChannelUri C:\TEMP\VisualStudio.chman `
    --add Microsoft.VisualStudio.Workload.VCTools --includeRecommended`
    --installPath C:\BuildTools

ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat &&
CMD ["powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]