# Linux Troubleshooting Runbook (Day 05)

## Target Service / Process
Service inspected: cron

## Environment Basics

Command:
uname -a

<img width="1452" height="62" alt="image" src="https://github.com/user-attachments/assets/1d201447-8caf-47cd-8511-3828cdbc1ff2" />


Observation:
System is running Linux (WSL Ubuntu).

Command:
cat /etc/os-release

<img width="1030" height="297" alt="image" src="https://github.com/user-attachments/assets/0cdbe83b-67a8-49b6-9671-0233160f97c8" />


Observation:
Ubuntu distribution detected.

---

## Filesystem Sanity Check

Command:
mkdir /tmp/runbook-demo
cp /etc/hosts /tmp/runbook-demo/hosts-copy
ls -l /tmp/runbook-demo

<img width="951" height="202" alt="image" src="https://github.com/user-attachments/assets/021f5c4d-3b46-4470-8b50-c82f77be7139" />


Observation:
Temporary directory and file created successfully.

---

## Snapshot: CPU & Memory

Command:
top

<img width="1433" height="676" alt="image" src="https://github.com/user-attachments/assets/95fa50c9-d692-4985-bd5c-d8d717918601" />


Observation:
CPU usage is low and system is mostly idle.

Command:
free -h

<img width="1037" height="96" alt="image" src="https://github.com/user-attachments/assets/ec6b3c90-cdda-486b-a186-80734dc6bc14" />


Observation:
Memory usage is within normal limits.

---

## Snapshot: Disk & IO

Command:
df -h

<img width="1077" height="368" alt="image" src="https://github.com/user-attachments/assets/6509a39b-f626-4174-8cd5-25dbfe77396f" />


Observation:
Disk usage is below capacity limits.

Command:
du -sh /var/log

<img width="762" height="75" alt="image" src="https://github.com/user-attachments/assets/119cf352-1f91-460d-8c89-db30c08067a1" />


Observation:
Log directory size is small and manageable.

---

## Snapshot: Network

Command:
ss -tulpn

<img width="1397" height="277" alt="image" src="https://github.com/user-attachments/assets/d4815b70-a652-4776-8362-46117a844387" />


Observation:
Listening ports are visible; system services are bound correctly.

Command:
curl -I http://localhost

<img width="590" height="248" alt="image" src="https://github.com/user-attachments/assets/58d5901a-974a-4dc1-8810-b5f50c241715" />


Observation:
Connection check performed.

---

## Logs Reviewed

Command:
journalctl -u cron -n 50

<img width="1377" height="642" alt="image" src="https://github.com/user-attachments/assets/366a009c-750a-468a-bedf-3e762019d539" />


Observation:
No recent errors detected in cron logs.

Command:
journalctl -xe | tail -n 20

<img width="1437" height="501" alt="image" src="https://github.com/user-attachments/assets/35103f7b-271c-4549-b9d9-005b3000afca" />


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
