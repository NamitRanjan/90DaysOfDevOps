# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## Commands Used

Launch & SSH:
ssh -i my-key.pem ubuntu@<instance-ip>

Output:

<img width="1387" height="631" alt="image" src="https://github.com/user-attachments/assets/46b5292a-39cc-4dd7-bac4-645cf56821b7" />

System setup:
sudo apt update
sudo apt upgrade -y

Nginx:
sudo apt install nginx -y

<img width="702" height="165" alt="image" src="https://github.com/user-attachments/assets/4474d426-1fd5-4988-b455-7ae4ee8627d2" />

systemctl status nginx

<img width="1272" height="402" alt="image" src="https://github.com/user-attachments/assets/45d6af11-e5c0-40bd-9c95-72709d2060c6" />


Logs:
tail -n 20 /var/log/nginx/access.log

<img width="1587" height="81" alt="image" src="https://github.com/user-attachments/assets/c250fa28-a93c-4cfe-b8aa-0298a14d8f60" />

cp /var/log/nginx/access.log ~/nginx-logs.txt

<img width="835" height="41" alt="image" src="https://github.com/user-attachments/assets/340c01b4-12ca-4ae1-ac39-5c6e7b0bc4fc" />


Download logs:
scp -i my-key.pem ubuntu@<instance-ip>:~/nginx-logs.txt .

<img width="1566" height="85" alt="image" src="https://github.com/user-attachments/assets/9e59e9dd-6ee9-484f-b024-1507e9bf89b5" />

---

## Challenges Faced
- Configured SSH key permissions using chmod 400
- Ensured port 80 was allowed in security group
- Copied logs from protected directory using sudo

---

## What I Learned
- How to launch and access a cloud server using SSH
- How to install and manage services like nginx
- How security groups control access to services
- How to inspect and extract application logs
- How to transfer files using scp
