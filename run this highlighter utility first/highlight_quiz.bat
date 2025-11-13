@echo off
REM ==================================================
REM  Batch file to highlight correct answers in a quiz
REM ==================================================

echo Running Unity Quiz Highlighter...
echo.

REM Optional: ensure python is installed and accessible
python --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo Python is not installed or not in PATH.
    echo Please install Python 3.x and try again.
    pause
    exit /b
)

REM Run the Python script
python "%~dp0highlight_quiz.py"

echo.
echo Task completed.
echo Check for the new file: Quiz_Create_with_Code_1_Highlighted_Answers.docx
pause
