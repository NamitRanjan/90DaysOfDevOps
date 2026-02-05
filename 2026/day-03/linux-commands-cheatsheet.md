# Linux Commands Cheat Sheet (Day 03)

This cheat sheet contains commonly used Linux commands for
process management, file system navigation, and networking troubleshooting.

---

## Process Management

ps aux
View all running processes.

top
Real-time CPU and memory usage.

htop
Interactive process viewer.

kill <PID>
Terminate a process by PID.

kill -9 <PID>
Force kill a process.

pgrep <name>
Find process ID by name.

uptime
Show system uptime and load average.

free -m
Check memory usage.

---

## File System Commands

pwd
Show current directory.

ls -la
List files with permissions.

cd <dir>
Change directory.

mkdir <dir>
Create directory.

rm -rf <dir>
Remove directory recursively.

cp <src> <dest>
Copy files.

mv <src> <dest>
Move or rename files.

touch <file>
Create empty file.

df -h
Check disk usage.

du -sh *
Show directory sizes.

cat <file>
Display file content.

less <file>
View large files.

tail -f <file>
Watch log file in real time.

---

## Networking Troubleshooting

ip addr
Show IP addresses.

ping <host>
Test connectivity.

curl <url>
Make HTTP request.

dig <domain>
DNS lookup.

ss -tuln
Show listening ports.

netstat -tuln
Check network connections.

---

## Service & Logs (DevOps Essentials)

systemctl status <service>
Check service status.

systemctl restart <service>
Restart service.

journalctl -xe
View system logs.

journalctl -u <service>
View logs for a service.
