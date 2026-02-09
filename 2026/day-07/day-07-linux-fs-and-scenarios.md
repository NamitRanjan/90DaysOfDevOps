# Day 07 – Linux File System Hierarchy & Scenario Practice

## Part 1: Linux File System Hierarchy

### Root directory — the starting point of the Linux file system.

Command:
ls -l /

Output:
<img width="900" height="648" alt="image" src="https://github.com/user-attachments/assets/fb9e5db1-d774-4d7e-8469-cbd9326835bc" />

Observation:
Contains directories like bin, etc, home, usr, var.

I would use this when navigating the overall system structure.

---

### /home
Contains user home directories.

Command:
ls -l /home

Output:
<img width="748" height="102" alt="image" src="https://github.com/user-attachments/assets/b726c877-96dc-4e08-8db1-53d87f16b019" />

Observation:
User folders are stored here.

I would use this when accessing user files or scripts.

---

### /root
Home directory of the root user.

Command:
ls -l /root

Output:
<img width="907" height="77" alt="image" src="https://github.com/user-attachments/assets/2cdfad68-6cba-4fbc-b9a3-a52dd560a261" />

Observation:
Although there is nothing in my machine as of now, administrative files may exist here.
I would use this when performing system administration tasks.

---

### /etc
Stores system configuration files.

Command:
ls -l /etc | head

Output:
<img width="828" height="278" alt="image" src="https://github.com/user-attachments/assets/8769d5ea-316d-4757-b0bb-067d88c4a576" />

Observation:
Files like hostname, hosts, and passwd exist.

Command:
cat /etc/hostname

Output:
<img width="867" height="55" alt="image" src="https://github.com/user-attachments/assets/c8d31586-fb92-44fa-aed9-65dce53ed763" />

I would use this when troubleshooting configuration issues.

---

### /var/log
Contains system and application logs.

Command:
ls -l /var/log | head

Output:
<img width="1032" height="263" alt="image" src="https://github.com/user-attachments/assets/49a9cb74-a952-45c5-b00d-52cced5119b6" />

Observation:
Multiple log files are stored here.

Command:
du -sh /var/log/* 2>/dev/null | sort -h | tail -5

Output:
<img width="1252" height="155" alt="image" src="https://github.com/user-attachments/assets/675cb2f8-94fc-4da7-b41a-37ac9437621e" />

I would use this when troubleshooting system or service failures.

---

### /tmp
Temporary files directory.

Command:
ls -l /tmp

Output:
<img width="1462" height="227" alt="image" src="https://github.com/user-attachments/assets/01511e12-a98d-45bc-9fe2-8854c0e65e5a" />

Observation:
Temporary runtime files stored here.

I would use this when applications need temporary storage.

---

### /bin
Essential command binaries.

Command:
ls -l /bin | head

Output:
<img width="792" height="55" alt="image" src="https://github.com/user-attachments/assets/9bfd2318-f07c-4e77-9e06-d755768c272e" />

Observation:
Core commands like ls, cp, mv exist.

I would use this when understanding where system commands live.

---

### /usr/bin
User command binaries.

Command:
ls -l /usr/bin | head

Output:
<img width="1208" height="330" alt="image" src="https://github.com/user-attachments/assets/73a2db43-d37e-4299-a05d-050d76cf2e9c" />

Observation:
Large collection of executable programs.

I would use this when checking installed commands.

---

### /opt
Optional third-party software.

Command:
ls -l /opt

Output:
<img width="788" height="77" alt="image" src="https://github.com/user-attachments/assets/df0de8e2-b893-4836-a1e2-86cd7de1a3f4" />

Observation:
May be empty or contain manually installed software.

I would use this when installing external applications.

---

### Home Directory Check
Command:
ls -la ~

Output:
<img width="918" height="648" alt="image" src="https://github.com/user-attachments/assets/e7e308ad-3b2d-422d-96ad-9c97b6cc41af" />

Observation:
Shows user files and hidden configuration files.

---

## Part 2: Scenario-Based Practice

### Scenario 1: Service Not Starting

Step 1:
systemctl status myapp  
Why: Check if service failed or is inactive.

Step 2:
journalctl -u myapp -n 50  
Why: Inspect recent service logs.

Step 3:
systemctl is-enabled myapp  
Why: Check if service starts on boot.

Step 4:
systemctl list-units --type=service  
Why: Verify service exists.

---

### Scenario 2: High CPU Usage

Step 1:
top  
Why: View live CPU usage.

Step 2:
ps aux --sort=-%cpu | head -10  
Why: Identify top CPU-consuming processes.

Step 3:
pgrep <process_name>  
Why: Find PID of specific process.

---

### Scenario 3: Finding Service Logs

Step 1:
systemctl status docker  
Why: Confirm service state.

Step 2:
journalctl -u docker -n 50  
Why: View recent logs.

Step 3:
journalctl -u docker -f  
Why: Follow logs in real time.

---

### Scenario 4: File Permissions Issue

Step 1:
ls -l /home/user/backup.sh  
Why: Check permissions.

Step 2:
chmod +x /home/user/backup.sh  
Why: Add execute permission.

Step 3:
ls -l /home/user/backup.sh  
Why: Verify change.

Step 4:
./backup.sh  
Why: Execute script.




