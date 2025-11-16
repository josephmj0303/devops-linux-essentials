# Basic Linux Commands for DevOps
A concise, real-world reference for daily DevOps work (cloud, CI/CD, servers, troubleshooting).

---

## 🔹 1. System Information

```bash
uname -a        # Kernel + system info
hostnamectl     # Hostname + OS details
uptime          # System load
df -h           # Disk usage
du -sh *        # Folder sizes
free -h         # RAM usage
top             # Live process view
```

---

## 🔹 2. File & Directory Operations

```bash
ls -l           # List with details
ls -al          # List including hidden files
pwd             # Current directory

cd /path        # Change directory
cd -            # Previous directory

mkdir newdir
mkdir -p a/b/c

touch file.txt
cp src dest
mv src dest
rm file.txt
rm -rf folder/  # Force delete directory
```

---

## 🔹 3. Viewing & Editing Files

```bash
cat file
tac file          # Reverse cat
less file
head file
tail file
tail -f logfile   # Follow logs live

nano file
vim file
```

---

## 🔹 4. Searching

### Search inside files:
```bash
grep "pattern" file
grep -i "error" /var/log/syslog
grep -R "db_password" .
```

### Find files/folders:
```bash
find / -name "*.log"
find . -type f -size +10M
```

---

## 🔹 5. Permissions & Ownership

```bash
chmod 755 script.sh
chmod +x script.sh

chown user:group file
chown -R www-data:www-data /var/www/
```

Common permissions:
- `644` → files  
- `755` → folders & scripts  
- `600` → SSH keys, secrets  

---

## 🔹 6. Networking

```bash
ip a            # Network interfaces
ip r            # Routing table
ss -tulnp       # Listening ports
ping google.com # Connectivity
curl -I URL     # Headers only
wget URL
```

Check DNS:
```bash
dig google.com
nslookup github.com
```

---

## 🔹 7. Package Management

### Ubuntu/Debian:
```bash
apt update
apt upgrade -y
apt install nginx
apt remove nginx
```

### RHEL/CentOS/AlmaLinux:
```bash
yum install httpd
dnf update -y
```

---

## 🔹 8. Archive & Compression

```bash
tar -cvf archive.tar folder/
tar -xvf archive.tar

tar -czvf file.tar.gz folder/
tar -xzvf file.tar.gz
```

Zip:
```bash
zip file.zip folder/
unzip file.zip
```

---

## 🔹 9. Processes & Services

```bash
ps aux | grep nginx
kill -9 PID
```

Systemd services:
```bash
systemctl status nginx
systemctl start nginx
systemctl stop nginx
systemctl enable nginx
```

---

## 🔹 10. Networking (Advanced DevOps)

Check open ports:
```bash
ss -lntp
```

Check connectivity to port:
```bash
nc -zv google.com 443
```

Test APIs:
```bash
curl -X GET https://api.example.com
```

---

## 🔹 11. Disk & Storage

```bash
lsblk
mount /dev/sdb1 /mnt
umount /mnt
```

---

## 🔹 12. Other Useful Commands

```bash
history
shutdown -r now
date
whoami
```

---
