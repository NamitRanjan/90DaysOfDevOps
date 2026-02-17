# Day 15 – Networking Concepts: DNS, IP, Subnets & Ports

## Task 1: DNS – How Names Become IPs

When typing google.com in a browser:
- The system queries a DNS resolver.
- DNS resolves the domain name to an IP address.
- The browser connects to that IP using HTTP/HTTPS.

DNS Record Types:
- A → Maps domain to IPv4 address
- AAAA → Maps domain to IPv6 address
- CNAME → Alias to another domain
- MX → Mail server record
- NS → Name server record

Command:
dig google.com

Observation:
A record resolves to a public IP address with a TTL value.

---

## Task 2: IP Addressing

IPv4 address:
- 32-bit numeric address written in dotted decimal format.
- Example: 192.168.1.10

Public vs Private IP:
- Public → reachable from internet (example: 8.8.8.8)
- Private → used inside networks (example: 192.168.1.5)

Private IP ranges:
- 10.0.0.0/8
- 172.16.0.0 – 172.31.255.255
- 192.168.0.0/16

Command:
ip addr show

Observation:
Local interface has a private IP address.

---

## Task 3: CIDR & Subnetting

/24 means:
- First 24 bits are network portion.
- Last 8 bits are host portion.

Why subnet?
- Organize networks
- Reduce broadcast traffic
- Improve security and control

CIDR Table:

CIDR | Subnet Mask | Total IPs | Usable Hosts
-----|-------------|-----------|-------------
/24  | 255.255.255.0 | 256 | 254
/16  | 255.255.0.0   | 65536 | 65534
/28  | 255.255.255.240 | 16 | 14

---

## Task 4: Ports – The Doors to Services

A port identifies a specific service running on a machine.

Common ports:

22 → SSH  
80 → HTTP  
443 → HTTPS  
53 → DNS  
3306 → MySQL  
6379 → Redis  
27017 → MongoDB  

Command:
ss -tulpn

Observation:
Example listening services include SSH on port 22.

---

## Task 5: Putting It Together

curl http://myapp.com:8080 involves:
- DNS resolution
- TCP connection to port 8080
- HTTP request to application

If app can't reach database at 10.0.1.50:3306:
Check:
- Network connectivity (ping)
- Port reachability (nc)
- Database service status

---

## What I Learned

- DNS translates domain names to IP addresses.
- CIDR controls network size and segmentation.
- Ports map services to network communication.
