# File I/O Practice (Day 06)

## Creating a file
Command:
touch notes.txt

Output:
<img width="757" height="182" alt="image" src="https://github.com/user-attachments/assets/080c0074-f3a3-4ded-a644-c11fba888f89" />

Observation:
Created an empty file named notes.txt.

---

## Writing to a file (overwrite)
Command:
echo "Line 1: DevOps learning" > notes.txt

Output:
<img width="1088" height="70" alt="image" src="https://github.com/user-attachments/assets/6cf7baed-7b3b-4c3f-9698-73b591a9c8a7" />

Observation:
The file now contains one line.

---

## Appending to a file
Command:
echo "Line 2: Practicing Linux commands" >> notes.txt

Output:
<img width="1212" height="96" alt="image" src="https://github.com/user-attachments/assets/0211090d-f765-420d-a839-3dc60303e2f9" />

Observation:
Second line added without overwriting.

---

## Using tee to write and display
Command:
echo "Line 3: File I/O practice" | tee -a notes.txt

Output:
<img width="1213" height="47" alt="image" src="https://github.com/user-attachments/assets/c11809ab-24e9-47e1-9675-2b78c5bfa4b6" />

Observation:
Text printed to terminal and appended to file.

---

## Reading the file
Command:
cat notes.txt

Output:
<img width="817" height="87" alt="image" src="https://github.com/user-attachments/assets/246af4c5-aae9-4244-8c7c-46b279fb21a6" />

Observation:
Displays entire file content.

---

## Reading first two lines
Command:
head -n 2 notes.txt

Output:
<img width="857" height="72" alt="image" src="https://github.com/user-attachments/assets/77580d9f-cfe2-4a19-8660-abb134bfa183" />

Observation:
Shows first two lines of the file.

---

## Reading last two  lines
Command:
tail -n 2 notes.txt

Output:
<img width="812" height="62" alt="image" src="https://github.com/user-attachments/assets/0ca92184-1f86-47c3-ae9b-b7387d813270" />

Observation:
Shows last two lines of the file.
