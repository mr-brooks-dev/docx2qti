@echo off
REM run_docx_to_qti.bat
cd /d "%~dp0"

REM Quick check for python
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Python not found on PATH.
    echo Opening Python downloads page...
    start "" "https://www.python.org/downloads/"
    pause
    exit /b 1
)

REM For each .docx in folder, call the script with the full path.
for %%F in (*.docx) do (
    echo Processing "%%~nF.docx" ...
    python "%~dp0docx_to_qti.py" "%%~fF"
    if ERRORLEVEL 1 (
        powershell -Command "Write-Host '✗ Failed: %%~nF.docx' -ForegroundColor Red"
    ) else (
        powershell -Command "Write-Host '✔ Exported: %%~nF_qti.zip' -ForegroundColor Green"
    )
)

echo.
powershell -Command "Write-Host 'All done.' -ForegroundColor Cyan"
pause
