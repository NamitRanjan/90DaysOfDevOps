# Linux Architecture – Notes (Day 02)

## 1. Core Components of Linux

### Kernel
- The kernel is the core of the Linux OS.
- It manages hardware resources like CPU, memory, disk, and network.
- It acts as a bridge between applications and hardware.
- Examples of kernel responsibilities:
  - Process scheduling
  - Memory management
  - Device drivers
  - File system access

### User Space
- User space is where user applications run.
- Includes shell, GUI, system utilities, and applications.
- Users cannot directly access hardware from user space.
- Commands like `ls`, `ps`, `top` run in user space.

### Init / systemd
- systemd is the first process started by the kernel (PID 1).
- It is responsible for starting and managing all services.
- It replaces older init systems like SysV init.

---

## 2. Process Management

### What is a Process?
- A process is a running instance of a program in memory.
- Each process has:
  - A PID (Process ID)
  - Its own memory space
  - A state

### How Processes are Created
- Processes are created using system calls like `fork()` and `exec()`.
- A parent process can create child processes.
- Example: When you open a terminal, a new shell process is created.

### Process States
- **Running** – Currently executing on CPU.
- **Sleeping** – Waiting for I/O or event.
- **Stopped** – Paused manually (e.g., Ctrl+Z).
- **Zombie** – Finished execution but not cleaned by parent.

---

## 3. systemd

### What is systemd?
- systemd is a system and service manager in Linux.
- It controls how services are started, stopped, restarted, and monitored.

### Why systemd Matters
- Automatically restarts failed services.
- Manages dependencies between services.
- Provides centralized logging via journal.

### Useful systemd commands
```bash
systemctl status
systemctl start nginx
systemctl stop nginx
systemctl restart nginx
journalctl -xe
