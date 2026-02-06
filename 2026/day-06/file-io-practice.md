# File I/O Practice (Day 06)

## Creating a file
Command:
touch notes.txt

Observation:
Created an empty file named notes.txt.

---

## Writing to a file (overwrite)
Command:
echo "Line 1: DevOps learning" > notes.txt

Observation:
The file now contains one line.

---

## Appending to a file
Command:
echo "Line 2: Practicing Linux commands" >> notes.txt

Observation:
Second line added without overwriting.

---

## Using tee to write and display
Command:
echo "Line 3: File I/O practice" | tee -a notes.txt

Observation:
Text printed to terminal and appended to file.

---

## Reading the file
Command:
cat notes.txt

Observation:
Displays entire file content.

---

## Reading first lines
Command:
head -n 2 notes.txt

Observation:
Shows first two lines of the file.

---

## Reading last lines
Command:
tail -n 2 notes.txt

Observation:
Shows last two lines of the file.
