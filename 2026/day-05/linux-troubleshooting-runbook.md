# Linux Troubleshooting Runbook (Day 05)

## Target Service / Process
Service inspected: cron

## Environment Basics

Command:
uname -a

Observation:
System is running Linux (WSL Ubuntu).

Command:

cat /etc/os-release

Observation:
Ubuntu distribution detected.

---

## Filesystem Sanity Check

Command:

mkdir /tmp/runbook-demo
cp /etc/hosts /tmp/runbook-demo/hosts-copy
ls -l /tmp/runbook-demo

Observation:
Temporary directory and file created successfully.

---

## Snapshot: CPU & Memory

Command:

top

Observation:
CPU usage is low and system is mostly idle.

Command:

free -h

Observation:
Memory usage is within normal limits.

---

## Snapshot: Disk & IO

Command:

df -h

Observation:
Disk usage is below capacity limits.

Command:

du -sh /var/log

Observation:
Log directory size is small and manageable.

---

## Snapshot: Network

Command:

ss -tulpn

Observation:
Listening ports are visible; system services are bound correctly.

Command:

curl -I http://localhost

<img width="590" height="248" alt="image" src="https://github.com/user-attachments/assets/58d5901a-974a-4dc1-8810-b5f50c241715" />



Observation:
Connection check performed (may fail if no web server is running).

---

## Logs Reviewed

Command:

journalctl -u cron -n 50

Observation:
No recent errors detected in cron logs.

Command:

journalctl -xe | tail -n 20

Observation:
System logs show normal service activity.

---

## Quick Findings

* CPU and memory usage are normal.
* Disk usage is healthy.
* No suspicious log entries.
* cron service is running correctly.

System appears stable.

---

## If This Worsens (Next Steps)

1. Restart the service

   systemctl restart cron

2. Increase logging or monitor logs in real time

   journalctl -u cron -f

3. Inspect process behavior

   ps aux | grep cron
