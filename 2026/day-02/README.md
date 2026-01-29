# Day 02 – Linux Architecture, Processes, and systemd

## Goal
Understand how Linux works under the hood, focusing on:
- Core Linux architecture
- Process management
- systemd and service handling

This knowledge is essential for troubleshooting production systems.

---

## What I Learned

### Linux Core Components
- Kernel manages hardware and system resources.
- User space is where applications and commands run.
- systemd is the first process (PID 1) and manages all services.

### Process Management
- A process is a running instance of a program.
- Processes have states like:
  - Running
  - Sleeping
  - Stopped
  - Zombie

### systemd
- systemd manages system services and resources.
- It starts, stops, restarts, and monitors services.
- It provides centralized logging using journal.

---

## Key Takeaways (DevOps Perspective)
- systemd helps auto-recover failed services.
- Understanding process states helps debug CPU/memory issues.
- Centralized logs make troubleshooting faster.

---

## Notes
Detailed notes for this day are available here:  
👉 **[linux-architecture-notes.md](linux-architecture-notes.md)**

---

## Commands Practiced
```bash
ps aux
top
systemctl status
systemctl restart
journalctl -u

