@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

for %%f in (*.*) do (
    powershell -Command "& { $c = Get-Content -Path '%%f' -Raw -Encoding UTF8; if ($c -match '- 阅后即焚') { $c = $c -replace '- 阅后即焚', '- 阅后即焚'; [System.IO.File]::WriteAllText('%%f', $c, [System.Text.UTF8Encoding]::new($false)) } }"
)
echo 替换完成。
pause
