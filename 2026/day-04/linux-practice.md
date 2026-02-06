# linux-practice.md

````md
# Linux Practice – Processes and Services (Day 04)

This note captures basic Linux troubleshooting commands executed on my system.

Service inspected: cron

---

## Process Checks

### 1. List running processes
Command:
ps aux | head

Output:

```
root         1  0.0  0.1 16932  936 ?        Ss   systemd
root       612  0.0  0.0  4024  219 ?        Ss   cron
```

Observation:
System processes and background services are visible.

---

### 2. Real-time process monitoring

Command:

```bash
top
```

Observation:
Shows CPU usage, memory usage, and active processes.

---

## Service Checks

### 3. Check cron service status

Command:

```bash
systemctl status cron
```

Output:

```
Active: active (running)
```

Observation:
Cron service is running normally.

---

### 4. List running services

Command:

```bash
systemctl list-units --type=service
```

Observation:
Displays all active system services.

---

## Log Checks

### 5. View logs for cron service

Command:

```bash
journalctl -u cron --no-pager | tail -n 5
```

Observation:
Recent cron activity is visible in logs.

---

### 6. View system logs

Command:

```bash
journalctl -xe | tail -n 10
```

Observation:
Shows recent system events and service messages.

---

## Mini Troubleshooting Flow

Example scenario: Service verification

Steps:

1. Check if process exists

   ```bash
   ps aux | grep cron
   ```

2. Check service status

   ```bash
   systemctl status cron
   ```

3. Inspect logs

   ```bash
   journalctl -u cron
   ```

Conclusion:
The cron service is running correctly and logs show no errors.


