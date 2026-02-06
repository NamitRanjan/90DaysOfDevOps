# linux-practice.md

# Linux Practice – Processes and Services (Day 04)

This note captures basic Linux troubleshooting commands executed on my system.

Service inspected: cron

---

## Process Checks

### 1. List running processes
Command:
ps aux | head

Output:
<img width="1457" height="298" alt="image" src="https://github.com/user-attachments/assets/6d198440-8dfc-4c12-8db9-3a261cf95f3f" />

Observation:
System processes and background services are visible.

---

### 2. Real-time process monitoring

Command:
top

Output:
<img width="1428" height="628" alt="image" src="https://github.com/user-attachments/assets/5192df8e-83eb-4b58-8dfb-0db74a752da7" />

Observation:
Shows CPU usage, memory usage, and active processes.

---

## Service Checks

### 3. Check cron service status

Command:
systemctl status cron


Output:
<img width="1413" height="510" alt="image" src="https://github.com/user-attachments/assets/ceb6ab23-c616-41a4-8863-b77328c651f6" />

Observation:
Cron service is running normally.

---

### 4. List running services

Command:
systemctl list-units --type=service

Output:
<img width="1412" height="667" alt="image" src="https://github.com/user-attachments/assets/ee2ac11f-75b0-4433-82bc-5414bd52d5db" />

Observation:
Displays all active system services.

---

## Log Checks

### 5. View logs for cron service

Command:
journalctl -u cron --no-pager | tail -n 5

Output:
<img width="1293" height="138" alt="image" src="https://github.com/user-attachments/assets/9957556c-a72a-4cbe-bd46-39f3da88bcc1" />

Observation:
Recent cron activity is visible in logs.

---

### 6. View system logs

Command:
journalctl -xe | tail -n 10

Output:
<img width="1443" height="277" alt="image" src="https://github.com/user-attachments/assets/32e71128-84a9-4a99-878b-704e61a3dd03" />

Observation:
Shows recent system events and service messages.

---

## Mini Troubleshooting Flow

Example scenario: Service verification

Steps:

1. Check if process exists

   ps aux | grep cron

2. Check service status

   systemctl status cron

3. Inspect logs

   journalctl -u cron

Conclusion:
The cron service is running correctly and logs show no errors.


