# Day 14 – Networking Fundamentals & Hands-on Checks

## Quick Concepts

### OSI vs TCP/IP
- OSI has 7 layers (Physical → Application).
- TCP/IP groups them into 4 layers (Link, Internet, Transport, Application).
- TCP/IP is the practical model used in real networking.

### Protocol Placement
- IP → Internet layer
- TCP/UDP → Transport layer
- HTTP/HTTPS → Application layer
- DNS → Application layer

Example:
curl https://google.com = Application (HTTP) → Transport (TCP) → Internet (IP)

---

## Hands-on Checklist

Target host: **google.com**

---

### Identity
Command:
- **hostname -I**

<img width="743" height="51" alt="image" src="https://github.com/user-attachments/assets/32b17175-9a75-43bb-86c0-bcbe3f800a45" />

Observation:
Shows the system’s IP address.

---

### Reachability
Command:
- **ping -c 3 google.com**

<img width="1097" height="215" alt="image" src="https://github.com/user-attachments/assets/0978f9da-087f-48a4-91cb-2dd4db0c2c0b" />

Observation:
Low latency and no packet loss.

---

### Path Check
Command:
- **traceroute google.com**

<img width="1457" height="601" alt="image" src="https://github.com/user-attachments/assets/5cc9b895-ce1c-43b7-9d51-c9814a2b586b" />

Observation:
Shows network hops to destination.

---

### Listening Ports
Command:
- **ss -tulpn | head**

<img width="1337" height="257" alt="image" src="https://github.com/user-attachments/assets/17af5fe9-6685-408f-97f8-3e0b6954cbe6" />

Observation:
SSH service not listening on port 22.

---

### Name Resolution
Command:
- **dig google.com**

<img width="920" height="422" alt="image" src="https://github.com/user-attachments/assets/b9738aa0-ecdb-4b2f-bd65-dbea0ad69a5c" />

Observation:
Domain resolves to public IP address.

---

### HTTP Check
Command:
- **curl -I https://google.com**

<img width="1465" height="407" alt="image" src="https://github.com/user-attachments/assets/f29434b3-1193-4880-a619-fba7501e428b" />

Observation:
HTTP response received (status 200/301).

---

### Connections Snapshot
Command:
- **netstat -an | head**

<img width="1002" height="257" alt="image" src="https://github.com/user-attachments/assets/52e9216a-ef37-425e-a8ff-5b7a35fd1624" />

Observation:
Shows LISTEN and ESTABLISHED connections.

---

## Mini Task: Port Probe

Assume Listening port identified: **22 (SSH)**

Command:
**nc -zv localhost 22**

Observation:
Port is reachable.

Next check if not reachable:
systemctl status ssh

---

## Reflection

### Which command gives fastest signal?
ping and curl quickly confirm connectivity.

---

### If DNS fails?
Check DNS resolution tools (dig, nslookup).

Layer:
Application layer (DNS).

---

### If HTTP 500 appears?
Check:
- Web server logs
- Application logs

Layer:
Application layer.

---

### Two follow-up checks during incident
- systemctl status <service>
- journalctl -u <service>
