@echo off
title Windows Post Installation Tool

:main
cls
echo.
echo Created by vse3211
echo.
echo Windows Post Installation Tool
echo.
echo 0. EXIT
echo.
echo ============BASIC=============
echo 10. Google.Chrome
echo 11. Mozilla.Firefox
echo 12. Microsoft.Office
echo 13. 7zip
echo.
echo ===========TORRENT============
echo 20. qBittorrent
echo.
echo ==========CHATnTALK===========
echo 30. WhatsApp
echo 31. Telegram.TelegramDesktop
echo 32. Discord
echo 33. Zoom
echo 34. Microsoft.Teams
echo.
echo ===========SERVICE============
echo 40. ALGPU.CoreTemp
echo.
echo =========DEVELOPMENT==========
echo 500. GitHub.GitHubDesktop
echo 501. SublimeHQ.SublimeText.3 (Enter 900 for open additional script for it)
echo 502. SublimeHQ.SublimeText.4 (Enter 900 for open additional script for it)
echo 503. Microsoft.VisualStudioCode
echo 504. WinSCP
echo 505. DBeaver.Community
echo 506. OpenJS.NodeJS
echo 507. OpenJS.NodeJS.LTS
echo 508. Python.Python.3.9
echo 509. Python.Python.2
echo 510. Python.Launcher
echo 511. JetBrains.Toolbox
echo 512. Microsoft.VisualStudio.2022.Community
echo 513. Microsoft.VisualStudio.2022.Professional
echo 514. Microsoft.VisualStudio.2022.Enterprise
echo 515. Microsoft.VisualStudio.2022.BuildTools
echo 516. Microsoft.VisualStudioCode.Insiders
echo 517. Git
echo 518. Microsoft.DotNet.SDK.10
echo 519. Microsoft.DotNet.SDK.9
echo 520. Microsoft.DotNet.SDK.8
echo 521. Microsoft.DotNet.SDK.5
echo.
echo ==========STREAMING===========
echo 60. OBSProject.OBSStudio
echo.
echo ========REMOTE-CONTROL========
echo 70. RustDesk
echo 71. AnyDesk
echo 72. TeamViewer
echo 73. TeamViewer.Host
echo 74. TeamViewer.QuickSupport
echo.
echo ======ADDITIONAL-SCRIPTS======
echo.
echo 900. SublimeTextContextMenu - Add or remove SublimeText from windows context menu
echo 901. MAS - do own your risk!

rem Я за*бался писать это меню! Надеюсь оно того стоило...
rem Мог бы я надеятся что это никто не прочитает, но если прочитал, а ты это прочитал, то ты молодец! Держи в секрете

set /p choice="Choose an option (10-...): "

if "%choice%"=="0" goto EOF

rem Basic
if "%choice%"=="10" set pname=Google.Chrome
if "%choice%"=="11" set pname=Mozilla.Firefox
if "%choice%"=="12" set pname=Microsoft.Office
if "%choice%"=="13" set pname=7zip.7zip

rem Torrent
if "%choice%"=="20" set pname=qBittorrent.qBittorrent

rem CHATnTALK
if "%choice%"=="30" set pname=WhatsApp.WhatsApp
if "%choice%"=="31" set pname=Telegram.TelegramDesktop
if "%choice%"=="32" set pname=Discord.Discord
if "%choice%"=="33" set pname=Zoom.Zoom
if "%choice%"=="34" set pname=Microsoft.Teams

rem Service
if "%choice%"=="40" set pname=ALCPU.CoreTemp

rem Development
if "%choice%"=="500" set pname=GitHub.GitHubDesktop
if "%choice%"=="501" set pname=SublimeHQ.SublimeText.3
if "%choice%"=="502" set pname=SublimeHQ.SublimeText.4
if "%choice%"=="503" set pname=Microsoft.VisualStudioCode
if "%choice%"=="504" set pname=WinSCP.WinSCP
if "%choice%"=="505" set pname=DBeaver.DBeaver.Community
if "%choice%"=="506" set pname=OpenJS.NodeJS
if "%choice%"=="507" set pname=OpenJS.NodeJS.LTS
if "%choice%"=="508" set pname=Python.Python.3.9
if "%choice%"=="509" set pname=Python.Python.2
if "%choice%"=="510" set pname=Python.Launcher
if "%choice%"=="511" set pname=JetBrains.Toolbox
if "%choice%"=="512" set pname=Microsoft.VisualStudio.2022.Community
if "%choice%"=="513" set pname=Microsoft.VisualStudio.2022.Professional
if "%choice%"=="514" set pname=Microsoft.VisualStudio.2022.Enterprise
if "%choice%"=="515" set pname=Microsoft.VisualStudio.2022.BuildTools
if "%choice%"=="516" set pname=Microsoft.VisualStudioCode.Insiders
if "%choice%"=="517" set pname=Git.Git
if "%choice%"=="518" set pname=Microsoft.DotNet.SDK.10
if "%choice%"=="519" set pname=Microsoft.DotNet.SDK.9
if "%choice%"=="520" set pname=Microsoft.DotNet.SDK.8
if "%choice%"=="521" set pname=Microsoft.DotNet.SDK.5

rem Streaming
if "%choice%"=="60" set pname=OBSProject.OBSStudio

rem Remote control
if "%choice%"=="70" set pname=RustDesk.RustDesk
if "%choice%"=="71" set pname=AnyDesk.AnyDesk
if "%choice%"=="72" set pname=TeamViewer.TeamViewer
if "%choice%"=="73" set pname=TeamViewer.TeamViewer.Host
if "%choice%"=="74" set pname=TeamViewer.TeamViewer.QuickSupport

rem Additional
if "%choice%"=="900" start SublimeTextContextMenu.bat && goto main
if "%choice%"=="901" start powershell "irm https://get.activated.win | iex" && goto main
goto install

:install
cls
echo Installation %pname% in progress...
echo You can cancel operation: just press CTRL+C in this window
echo.
winget install -e --id %pname%
echo.
echo Installation %pname% FINISHED, check logs and press enter for back to main or close this window
pause
goto main

:EOF
