================================================================================
                    DOCX to Canvas QTI Converter
                          Quick Start Guide
================================================================================

WHAT THIS DOES:
---------------
Automatically converts Microsoft Word quiz documents (.docx) into Canvas-
compatible QTI format files that can be imported directly into your LMS.


REQUIREMENTS:
-------------
1. Python 3.8 or later
   Download: https://www.python.org/downloads/
   
   IMPORTANT: During installation, check "Add Python to PATH"
   
2. Quiz files in .docx format with questions formatted as:
   - Question 1
   - Question text here
   - Select only one (or "Select all that apply")
   - A. First answer
   - B. Second answer
   - etc.
   
3. Highlight correct answers in your Word document


HOW TO USE:
-----------
1. INSTALL PYTHON (one-time setup)
   - Download Python from the link above
   - Run installer
   - CHECK THE BOX: "Add Python to PATH"
   - Click "Install Now"

2. PREPARE YOUR FILES
   - Place your quiz .docx file(s) in the same folder as these scripts
   - Make sure correct answers are highlighted in Word

3. RUN THE CONVERTER
   - Double-click: run_docx_to_qti.bat
   - Wait for processing to complete
   - Look for green checkmarks (√) for success

4. IMPORT TO CANVAS
   - In Canvas, go to your course
   - Navigate to Quizzes
   - Click "Import Quiz" or use Settings → Import Course Content
   - Upload the generated *_qti.zip file
   - Done!


FILE FORMATS:
-------------
Your Word quiz should look like this:

    Question 1
    What is the capital of France?
    Select only one
    A. London
    B. Paris          ← Highlight this (the correct answer)
    C. Berlin
    
    Question 2
    Which are programming languages?
    Select all that apply
    A. Python         ← Highlight this
    B. HTML
    C. Java           ← Highlight this
    D. CSS

Supported question types:
- Multiple choice (one correct answer)
- Multiple answer (multiple correct answers)
- True/False (treated as multiple choice)


OUTPUT FILES:
-------------
For each quiz file, you'll get:
- quizname_qti.zip  ← Import this file into Canvas
- docx_to_qti.log   ← Detailed processing log (for troubleshooting)


TROUBLESHOOTING:
----------------

Problem: "Python is not installed"
Solution: Install Python from https://www.python.org/downloads/
         Make sure to check "Add Python to PATH" during installation

Problem: Red X marks (✗) appear
Solution: 1. Check docx_to_qti.log for details
         2. Verify your quiz format matches the examples above
         3. Ensure questions start with "Question [number]"
         4. Make sure answers are highlighted

Problem: No questions found
Solution: 1. Questions must start with "Question 1", "Question 2", etc.
         2. Each question needs "Select only one" or "Select all that apply"
         3. Answer options should be marked (A., B., 1., 2., etc.)

Problem: Images not appearing
Solution: Images are automatically extracted. If missing, ensure images
         are embedded (not linked) in your Word document.

Problem: Canvas won't import the file
Solution: 1. Verify you're uploading the *_qti.zip file (not the folder)
         2. Try importing via Settings → Import Course Content
         3. Check Canvas import error messages


ADVANCED USAGE:
---------------
Command line options:

Process specific file:
    python docx_to_qti.py "myquiz.docx"

Process all files in a folder:
    python docx_to_qti.py "C:\path\to\folder"

Process all .docx in current directory:
    python docx_to_qti.py


FEATURES:
---------
✓ Automatic dependency installation
✓ Detects question types automatically
✓ Extracts and includes images
✓ Handles multi-paragraph questions and answers
✓ Color-coded success/failure indicators
✓ Detailed logging for troubleshooting
✓ Batch processing of multiple files
✓ Canvas LMS compatible QTI 1.2 format


SUPPORT:
--------
Check docx_to_qti.log for detailed error messages and processing information.

Common log locations:
- Same folder as the scripts
- Contains timestamps and full details of each conversion


TIPS FOR BEST RESULTS:
----------------------
1. Keep question formatting consistent
2. Always highlight correct answers with any color
3. Use clear answer markers (A., B., C., or 1., 2., 3.)
4. Test with a small quiz first
5. Check the log file if anything seems wrong
6. Embed images directly in Word (don't use linked images)


================================================================================
                         Questions? Check the log file!
                         docx_to_qti.log has all the details
================================================================================