                    DOCX to Canvas QTI Converter
                          Quick Start Guide
===============================================

WHAT THIS DOES:
---------------
Automagically converts Microsoft Word quiz documents (.docx) into Canvas-
compatible QTI format files that can be imported directly into your LMS.

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

HOW TO USE:
-----------
1. INSTALL PYTHON 3.8 or later (one-time setup)
   - Download Python (the bat file checks if you have it installed and if you dont 
   takes you to the download page:) https://www.python.org/downloads
   - Run installer
   - CHECK THE BOX: "Add Python to PATH"
   - Click "Install Now"

2. .docx quiz preparation:
Supported question types:
- Multiple choice (one correct answer)
- Multiple answer (multiple correct answers)
- True/False (treated as multiple choice)

Note: Your answer choices don't have to be labeled A. B. C. or 1, 2, 3, etc. 
      They just need to be on a separate line.

Your Word quiz should look like this: 
    
    Multi Choice Example:
    Question 1
    What is the capital of France?
    Select only one
    London
    Paris          ← Highlight this (the correct answer)
    Berlin

    Multi Answer Example:
    Question 2
    Which of these are fruit?
    Select all that apply
    A. Apple         ← Highlight this
    B. Lettuce
    C. Grapes        ← Highlight this
    D. Bread

3. PREPARE YOUR FILES
   - Place your quiz .docx file(s) in the same folder as these scripts
   - Make sure correct answers are highlighted in Word
   - or use the highlighter tool I made here (see the highlighter folder)

4. RUN THE CONVERTER
   - Double-click: run_docx_to_qti.bat
   - Look for green checkmarks (√) for success

5. IMPORT TO CANVAS
   - In Canvas, go to your course
   - Navigate to Settings → Import Course Content
   - For content type choose QTI .zip file
   - Done!

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

Problem: Images not appearing
Solution: Images are automatically extracted. If missing, ensure images
         are embedded (not linked) in your Word document.

Problem: Canvas won't import the file
Solution: 1. Verify you're uploading the *_qti.zip file (not the folder)
         2. Try importing via Settings → Import Course Content
         3. Check Canvas import error messages

SUPPORT:
--------
Check docx_to_qti.log for detailed error messages and processing information.
- Contains timestamps and full details of each conversion

TIPS FOR BEST RESULTS:
----------------------
1. Keep question formatting consistent
2. Always highlight correct answers with any color
3. Test with a small quiz first
4. Check the log file if anything seems wrong
5. Embed images directly in Word (don't use linked images the script extracts the images and embeds them for you! :-)
