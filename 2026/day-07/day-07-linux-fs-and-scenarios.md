# Day 07 – Linux File System Hierarchy & Scenario Practice

## Part 1: Linux File System Hierarchy

### /
Root directory — the starting point of the Linux file system.

Command:
ls -l /

Observation:
Contains directories like bin, etc, home, usr, var.

I would use this when navigating the overall system structure.

---

### /home
Contains user home directories.

Command:
ls -l /home

Observation:
User folders are stored here.

I would use this when accessing user files or scripts.

---

### /root
Home directory of the root user.

Command:
ls -l /root

Observation:
Administrative files may exist here.

I would use this when performing system administration tasks.

---

### /etc
Stores system configuration files.

Command:
ls -l /etc | head

Observation:
Files like hostname, hosts, and passwd exist.

Command:
cat /etc/hostname

I would use this when troubleshooting configuration issues.

---

### /var/log
Contains system and application logs.

Command:
ls -l /var/log | head

Observation:
Multiple log files are stored here.

Command:
du -sh /var/log/* 2>/dev/null | sort -h | tail -5

I would use this when troubleshooting system or service failures.

---

### /tmp
Temporary files directory.

Command:
ls -l /tmp

Observation:
Temporary runtime files stored here.

I would use this when applications need temporary storage.

---

### /bin
Essential command binaries.

Command:
ls -l /bin | head

Observation:
Core commands like ls, cp, mv exist.

I would use this when understanding where system commands live.

---

### /usr/bin
User command binaries.

Command:
ls -l /usr/bin | head

Observation:
Large collection of executable programs.

I would use this when checking installed commands.

---

### /opt
Optional third-party software.

Command:
ls -l /opt

Observation:
May be empty or contain manually installed software.

I would use this when installing external applications.

---

### Home Directory Check
Command:
ls -la ~

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




