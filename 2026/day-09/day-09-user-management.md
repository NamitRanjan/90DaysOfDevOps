# Day 09 Challenge – Linux User & Group Management

## Users & Groups Created

Users:
- tokyo
- berlin
- professor
- nairobi

<img width="622" height="143" alt="image" src="https://github.com/user-attachments/assets/b6b01eeb-3490-4a70-815c-35e4a185b205" />


Groups:
- developers
- admins
- project-team

<img width="347" height="92" alt="image" src="https://github.com/user-attachments/assets/4047e669-1a2a-464d-b082-5cd2b4f230ef" />


---

## Group Assignments

tokyo → developers, project-team  
berlin → developers, admins  
professor → admins  
nairobi → project-team  

<img width="750" height="305" alt="image" src="https://github.com/user-attachments/assets/0002744d-23c4-4969-ae52-00880534ed91" />

---

## Directories Created

/opt/dev-project → group: developers → permissions: 775  
/opt/team-workspace → group: project-team → permissions: 775  

<img width="941" height="696" alt="image" src="https://github.com/user-attachments/assets/6e13c107-3ed0-4f13-945d-c10e5b81fb37" />


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
