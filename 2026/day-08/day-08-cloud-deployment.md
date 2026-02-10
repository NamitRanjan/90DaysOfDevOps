# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## Commands Used

Launch & SSH:
ssh -i your-key.pem ubuntu@<instance-ip>

System setup:
sudo apt update
sudo apt upgrade -y

Docker:
sudo apt install docker.io -y
sudo systemctl start docker

Nginx:
sudo apt install nginx -y
systemctl status nginx

Logs:
tail -n 20 /var/log/nginx/access.log
cp /var/log/nginx/access.log ~/nginx-logs.txt

Download logs:
scp -i your-key.pem ubuntu@<instance-ip>:~/nginx-logs.txt .

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
