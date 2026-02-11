# Day 11 Challenge – File Ownership (chown & chgrp)

## Files & Directories Created

devops-file.txt

<img width="842" height="140" alt="image" src="https://github.com/user-attachments/assets/a0e67847-da9b-490d-8803-1c2c71718cc5" />


team-notes.txt

<img width="877" height="162" alt="image" src="https://github.com/user-attachments/assets/657a3779-e125-41b0-8f25-adde1cfabc89" />


project-config.yaml

<img width="886" height="181" alt="image" src="https://github.com/user-attachments/assets/d48940a9-38d9-401c-a863-9559a5f0160b" />


app-logs/

<img width="852" height="206" alt="image" src="https://github.com/user-attachments/assets/0e355730-9ed4-4768-8a54-360c2a9d344f" />


heist-project/

<img width="837" height="273" alt="image" src="https://github.com/user-attachments/assets/4260a244-01a2-43b6-bace-b48c31a66459" />


bank-heist/

<img width="838" height="247" alt="image" src="https://github.com/user-attachments/assets/35db8bc7-c7aa-40ec-9ede-920073b441b2" />


---

## Ownership Changes

devops-file.txt: user:user → berlin:user  

<img width="952" height="298" alt="image" src="https://github.com/user-attachments/assets/2ff1dfe9-006c-4fae-81d9-cf92b47d94fa" />

team-notes.txt: user:user → user:heist-team 

<img width="1013" height="346" alt="image" src="https://github.com/user-attachments/assets/903bbd4e-c413-461c-a5d3-25c2001db729" />

project-config.yaml: user:user → professor:heist-team  

<img width="1287" height="271" alt="image" src="https://github.com/user-attachments/assets/b38b7191-148c-42db-9cdd-fdb80e796d19" />

app-logs/: user:user → berlin:heist-team  

<img width="1153" height="282" alt="image" src="https://github.com/user-attachments/assets/745a2ffa-0ccd-4c09-b58a-be7e897f2e75" />

heist-project/: user:user → professor:planners  

<img width="1171" height="272" alt="image" src="https://github.com/user-attachments/assets/05a3ef40-063d-4680-b86d-2840b3d41440" />

bank-heist/access-codes.txt → tokyo:vault-team 

<img width="1248" height="347" alt="image" src="https://github.com/user-attachments/assets/92a02243-5ea2-4388-b92c-2950e4854251" />

bank-heist/blueprints.pdf → berlin:tech-team

<img width="1240" height="327" alt="image" src="https://github.com/user-attachments/assets/cd8f0dde-0250-4089-bc50-eafa68162710" />

bank-heist/escape-plan.txt → nairobi:vault-team  

<img width="1272" height="297" alt="image" src="https://github.com/user-attachments/assets/17995233-6ea4-4225-9c69-a5a54bd729bc" />


---

## Commands Used

- ls -l
- chown
- chgrp
- chown owner:group
- chown -R
- groupadd
- touch
- mkdir

---

## What I Learned

- Every file has an owner and group in Linux.
- chown can change both owner and group together.
- Recursive ownership is useful for project directories.
