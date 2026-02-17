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
curl https://example.com = Application (HTTP) → Transport (TCP) → Internet (IP)

---

## Hands-on Checklist

Target host: **google.com**

---

### Identity
Command:
hostname -I

Observation:
Shows the system’s IP address.

---

### Reachability
Command:
ping -c 3 google.com

Observation:
Low latency and no packet loss.

---

### Path Check
Command:
tracepath google.com

Observation:
Shows network hops to destination.

---

### Listening Ports
Command:
ss -tulpn | head

Observation:
SSH service listening on port 22.

---

### Name Resolution
Command:
dig google.com +short

Observation:
Domain resolves to public IP address.

---

### HTTP Check
Command:
curl -I https://google.com

Observation:
HTTP response received (status 200/301).

---

### Connections Snapshot
Command:
netstat -an | head

Observation:
Shows LISTEN and ESTABLISHED connections.

---

## Mini Task: Port Probe

Listening port identified: **22 (SSH)**

Command:
nc -zv localhost 22

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
