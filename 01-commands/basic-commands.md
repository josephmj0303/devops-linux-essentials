🔹 1. System Information
uname -a        # Kernel + system info
hostnamectl     # Hostname + OS details
uptime          # System load
df -h           # Disk usage
du -sh *        # Folder sizes
free -h         # RAM usage
top             # Live process view


🔹 2. File & Directory Operations
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


🔹 3. Viewing & Editing Files
cat file
tac file          # Reverse cat
less file
head file
tail file
tail -f logfile   # Follow logs live

nano file
vim file


🔹 4. Searching
Search inside files:
grep "pattern" file
grep -i "error" /var/log/syslog
grep -R "db_password" .

Find files/folders:
find / -name "*.log"
find . -type f -size +10M


🔹 5. Permissions & Ownership
chmod 755 script.sh
chmod +x script.sh

chown user:group file
chown -R www-data:www-data /var/www/

Common modes:

644 → files

755 → directories/scripts

600 → secrets/keys


🔹 6. Network Commands
ip a            # Network interfaces
ip r            # Routing table
ss -tulnp       # Listening ports
ping google.com # Connectivity
curl -I URL     # Header-only request
wget URL

Check DNS:
dig google.com
nslookup github.com


🔹 7. Package Management
Ubuntu/Debian:
apt update
apt upgrade -y
apt install nginx
apt remove nginx

RHEL/CentOS/AlmaLinux:
yum install httpd
dnf update -y


🔹 8. Archive & Compression
tar -cvf archive.tar folder/
tar -xvf archive.tar

tar -czvf file.tar.gz folder/
tar -xzvf file.tar.gz

Zip:
zip file.zip folder/
unzip file.zip


🔹 9. Processes & Services
ps aux | grep nginx
kill -9 PID

Systemd services:
systemctl status nginx
systemctl start nginx
systemctl stop nginx
systemctl enable nginx


🔹 10. Networking (Advanced DevOps Tasks)
Check open ports:
ss -lntp

Check connectivity to port:
nc -zv google.com 443

Test APIs:
curl -X GET https://api.example.com


🔹 11. Disk & Storage
lsblk
mount /dev/sdb1 /mnt
umount /mnt


🔹 12. Others
history
shutdown -r now
date
whoami
