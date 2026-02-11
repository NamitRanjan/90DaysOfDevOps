# Day 11 Challenge – File Ownership (chown & chgrp)

## Files & Directories Created

devops-file.txt
team-notes.txt
project-config.yaml
app-logs/
heist-project/
bank-heist/

---

## Ownership Changes

devops-file.txt: user:user → berlin:user  
team-notes.txt: user:user → user:heist-team  
project-config.yaml: user:user → professor:heist-team  
app-logs/: user:user → berlin:heist-team  
heist-project/: user:user → professor:planners  

bank-heist/access-codes.txt → tokyo:vault-team  
bank-heist/blueprints.pdf → berlin:tech-team  
bank-heist/escape-plan.txt → nairobi:vault-team  

---

## Commands Used

ls -l
chown
chgrp
chown owner:group
chown -R
groupadd
touch
mkdir

---

## What I Learned

- Every file has an owner and group in Linux.
- chown can change both owner and group together.
- Recursive ownership is useful for project directories.
