@echo off
:: Добавляем значение в реестр, чтобы скрыть значок
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{2cc5ca98-6485-489a-920e-b3e88a6ccce3}" /t REG_DWORD /d 1 /f

:: Удаляем значок из проводника
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{2cc5ca98-6485-489a-920e-b3e88a6ccce3}" /f

echo Изменения внесены в реестр. Значок ExplorerPatcher скрыт.
pause
