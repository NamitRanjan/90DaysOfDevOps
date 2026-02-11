# Day 10 Challenge – File Permissions & Operations

## Files Created
- devops.txt
- notes.txt
- script.sh
- project/ directory

---

## Permission Changes

script.sh
Before: -rw-r--r--
After:  -rwxr-xr-x

devops.txt
Before: -rw-r--r--
After:  -r--r--r--

notes.txt
Set to: -rw-r-----

project directory
Permissions: drwxr-xr-x (755)

---

## Commands Used

touch devops.txt
echo "text" > notes.txt
vim script.sh
cat notes.txt
head -n 5 /etc/passwd
tail -n 5 /etc/passwd
chmod +x script.sh
chmod a-w devops.txt
chmod 640 notes.txt
mkdir project
chmod 755 project

---

## What I Learned

- Linux permissions control who can read, write, and execute files.
- Scripts must have execute permission to run.
- Numeric permissions (755, 640) map to rwx values.
