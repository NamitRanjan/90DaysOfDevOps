# Day 09 Challenge – Linux User & Group Management

## Users & Groups Created

Users:
- tokyo
- berlin
- professor
- nairobi

Groups:
- developers
- admins
- project-team

---

## Group Assignments

tokyo → developers, project-team  
berlin → developers, admins  
professor → admins  
nairobi → project-team  

---

## Directories Created

/opt/dev-project → group: developers → permissions: 775  
/opt/team-workspace → group: project-team → permissions: 775  

---

## Commands Used

useradd -m <user>  
passwd <user>  
groupadd <group>  
usermod -aG <group> <user>  
mkdir -p <dir>  
chgrp <group> <dir>  
chmod 775 <dir>  
groups <user>  
sudo -u <user> touch <file>  

---

## What I Learned

- How Linux users and groups control access.
- How shared directories work with group permissions.
- How to test permissions using sudo -u.
