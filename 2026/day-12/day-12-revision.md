# Day 12 – Revision (Days 01–11)

## Mindset & Plan Review
I revisited my Day 01 learning plan. The goals still feel relevant.
I am getting comfortable with Linux commands and system troubleshooting.

Update:
Focus more on:
- practicing commands without looking them up
- understanding permissions deeply
- improving troubleshooting speed

---

## Processes & Services Review

Command:
ps aux | head

Observation:
Confirmed running system processes.

Command:
- systemctl status cron

Observation:
Service is active and running.

Command:
- journalctl -u cron -n 5

Observation:
Recent logs show normal activity.

---

## File Skills Practice

Command:
echo "Revision line" >> notes.txt

Command:
- chmod 640 notes.txt

Command:
- ls -l notes.txt

Observation:
File permissions updated successfully.

---

## Cheat Sheet Refresh (Top 5 Commands)

Commands I would use first during troubleshooting:

- ps aux
- top
- systemctl status
- journalctl -u <service>
- df -h

These help quickly identify system health issues.

---

## User / Group Sanity Practice

Command:
- sudo useradd testuser

Command:
- id testuser

Command:
- sudo chown tokyo notes.txt

Observation:
Verified user creation and ownership change.

---

## Mini Self-Check

### Which 3 commands save you the most time right now, and why?
- ps aux → quickly inspect processes

- systemctl status → check service health

- journalctl → inspect logs immediately

---

### How do you check if a service is healthy?
Commands:
- systemctl status <service>

- journalctl -u <service> -n 20

- ps aux | grep <service>

---

### How do you safely change ownership and permissions?
Example:
- sudo chown tokyo:developers file.txt

- chmod 640 file.txt

Always verify with:
ls -l

---

### What will you focus on improving in the next 3 days?
- Shell scripting basics
- Command speed and confidence
- Understanding automation workflows

---

## Key Takeaways (Days 01–11)

- Linux troubleshooting starts with processes, services, and logs.
- File permissions and ownership control access.
- Users and groups are essential for shared environments.
- Cloud server setup and SSH are core DevOps skills.
- Documentation helps retain knowledge.
