# Linux Users, Groups & File Permissions (DevOps Essentials)

Managing users, groups, and permissions is critical for DevOps engineers working with servers, CI/CD agents, cloud VMs, Docker hosts, and Kubernetes nodes.  
This guide covers everything you need for practical, real-world usage.

---

## 🔹 1. User Management

### Create a user:
```bash
sudo useradd john
sudo passwd john
```

### Create a user with home directory (recommended):
```bash
sudo useradd -m devuser
sudo passwd devuser
```

### Add user to a group:
```bash
sudo usermod -aG docker devuser
```

### Change user shell:
```bash
sudo usermod -s /bin/bash devuser
```

### Delete a user:
```bash
sudo userdel john
sudo userdel -r john    # Remove home directory
```

---

## 🔹 2. Group Management

### Create a group:
```bash
sudo groupadd developers
```

### Add user to group:
```bash
sudo usermod -aG developers john
```

### View user groups:
```bash
groups john
```

### Delete a group:
```bash
sudo groupdel developers
```

---

## 🔹 3. Switch Users

```bash
su - username       # Switch user
sudo -i             # Become root
sudo command        # Run single command as root
```

---

## 🔹 4. File Ownership

### Check file owners:
```bash
ls -l
```

Output example:
```
-rw-r--r-- 1 root root  4096 Jan 1  config.txt
```

### Change owner:
```bash
sudo chown devuser file.txt
```

### Change owner + group:
```bash
sudo chown devuser:developers file.txt
```

### Change ownership recursively:
```bash
sudo chown -R www-data:www-data /var/www/
```

---

## 🔹 5. File Permissions (r, w, x)

Linux uses 3 permission sets:
- **User (owner)**
- **Group**
- **Others**

### Letters meaning:
| Permission | Meaning |
|-----------|----------|
| **r**     | read     |
| **w**     | write    |
| **x**     | execute  |

Example:
```
-rwxr-xr--  
```

---

## 🔹 6. Changing Permissions (chmod)

### Using numbers:
| Number | Permission |
|--------|------------|
| **7** | rwx |
| **6** | rw- |
| **5** | r-x |
| **4** | r-- |
| **0** | --- |

Examples:

```bash
chmod 755 script.sh    # rwx r-x r-x
chmod 644 file.txt     # rw- r-- r--
chmod 600 secret.key   # rw- ---
```

### Make script executable:
```bash
chmod +x deploy.sh
```

---

## 🔹 7. Default Permissions (umask)

Check umask:
```bash
umask
```

Set umask:
```bash
umask 022
```

---

## 🔹 8. Sudo Privileges

Edit sudoers file safely:
```bash
sudo visudo
```

Give user full sudo access:
```
devuser ALL=(ALL) ALL
```

Give passwordless sudo:
```
devuser ALL=(ALL) NOPASSWD:ALL
```

---

## 🔹 9. Real-world DevOps Examples

### Allow Jenkins user to manage Docker:
```bash
sudo usermod -aG docker jenkins
```

### Set correct permissions for SSH keys:
```bash
chmod 600 ~/.ssh/id_rsa
chmod 700 ~/.ssh
```

### Give a deployment user access to web folder:
```bash
sudo chown -R deploy:deploy /var/www/html
sudo chmod -R 755 /var/www/html
```

### Restrict access to environment variable files:
```bash
chmod 600 .env
```

---

## 🔹 10. Audit Users (Security)

List logins:
```bash
last
```

List all users:
```bash
cat /etc/passwd
```

List all groups:
```bash
cat /etc/group
```

Find users with sudo access:
```bash
getent group sudo
```
