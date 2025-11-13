# highlight_quiz — README

A small Python utility that scans a Word `.docx` quiz file and **highlights the correct answers** (green) based on an external `answers.txt` file.

**Quick summary:** run `python highlight_quiz.py` (with the quiz file and `answers.txt` in the same folder). The script will search paragraphs and table cells for each answer (normalized for quotes/whitespace/case) and save a new `.docx` with those lines highlighted.

## Requirements
- Python 3.8+  
- `python-docx` library  

Install with:
```bash
pip install python-docx
```

## Files
- `highlight_quiz.py` — the script that scans and highlights the answers.  
- `answers.txt` — plain text file containing one or more answers per block, separated by an empty line.  
- `Quiz_Create_with_Code_1.docx` — your quiz input file.

## Usage
1. Ensure all three files are in the same directory:
   ```
   highlight_quiz.py
   answers.txt
   Quiz_Create_with_Code_1.docx
   ```
2. Run:
   ```bash
   python highlight_quiz.py
   ```
3. The script saves the output as `Quiz_Create_with_Code_1_Highlighted_Answers.docx` and prints the path.

## Format of answers.txt
Each answer block can span multiple lines. Blank lines separate answers.

Example:
```
If an enemy goes below the ground, destroy the enemy.

values[0] = 5.0f;

// If the player collides with a spike, destroy the spike

Box 1 (External Script Editor)
```

## How it works
- Reads `answers.txt` and splits it into answer blocks on blank lines.
- Normalizes text to handle curly quotes, dashes, and case differences.
- Highlights all paragraphs and table cells containing any of the normalized answers.
- Saves a new `.docx` with highlights applied (green by default).

## Customization
- To change the input or output filenames, modify the constants at the top of `highlight_quiz.py`.
- To change the highlight color, edit the line `WD_COLOR_INDEX.GREEN` in the `highlight_paragraph()` function.
- Matching is substring-based: partial phrases will match as long as they appear in the text.

## Troubleshooting
- **FileNotFoundError:** Check that all three files exist and paths are correct.
- **No highlights found:** Ensure the answers in `answers.txt` match the document text closely (punctuation, spelling, etc.).
- **Formatting issues:** `python-docx` preserves most formatting but may slightly adjust advanced styles.

## License
Use, modify, or redistribute freely. Attribution appreciated but not required.