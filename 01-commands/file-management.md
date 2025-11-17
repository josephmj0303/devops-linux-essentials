# File Management in Linux (DevOps Essentials)

This document covers the most important file & directory management operations used daily in DevOps, servers, AWS EC2 troubleshooting, CI/CD jobs, and automation.

---

## 🔹 1. Listing Files & Directories

```bash
ls              # List files
ls -l           # Long listing format
ls -al          # Show hidden files
ls -lh          # Human-readable sizes
ls -R           # Recursive listing
```

---

## 🔹 2. Creating Files & Directories

### Create files:
```bash
touch file.txt
touch app.log
```

### Create directories:
```bash
mkdir logs
mkdir -p /opt/app/data/logs  # Create nested folders
```

---

## 🔹 3. Copy, Move, Rename

### Copy files:
```bash
cp file1.txt file2.txt
cp -r src/ dest/      # Copy directory
```

### Move or rename:
```bash
mv file.txt /tmp/
mv oldname.txt newname.txt  # Rename
```

---

## 🔹 4. Deleting Files & Directories

⚠️ Dangerous operations — double-check paths.

### Delete files:
```bash
rm file.txt
```

### Delete directory:
```bash
rm -r folder/
```

### Force delete:
```bash
rm -rf /path/directory
```

---

## 🔹 5. Viewing File Content

```bash
cat file.txt
tac file.txt         # Reverse output
more file.txt
less file.txt        # Best for large files
head file.txt        # First 10 lines
tail file.txt        # Last 10 lines
tail -f /var/log/syslog   # Live log monitoring
```

---

## 🔹 6. Searching Inside Files

### Basic search:
```bash
grep "keyword" file.txt
```

### Case-insensitive:
```bash
grep -i "error" /var/log/messages
```

### Recursive search:
```bash
grep -R "password" /etc/
```

---

## 🔹 7. File Permissions & Ownership

### Change permissions:
```bash
chmod 644 file.txt         # Owner read/write, others read
chmod +x script.sh         # Make executable
```

### Change ownership:
```bash
chown user:group file.txt
chown -R www-data:www-data /var/www/
```

---

## 🔹 8. File Transfer (Local & Remote)

### Copy files locally:
```bash
cp file1 file2
```

### Copy to remote server:
```bash
scp file.txt user@server:/path/
```

### Copy from remote:
```bash
scp user@server:/path/file.txt .
```

### Sync directories:
```bash
rsync -av source/ dest/
```

---

## 🔹 9. Archiving & Compression

### Create tar archive:
```bash
tar -cvf archive.tar folder/
```

### Extract tar:
```bash
tar -xvf archive.tar
```

### Compress:
```bash
tar -czvf archive.tar.gz folder/
```

### Extract compressed:
```bash
tar -xzvf archive.tar.gz
```

### Zip:
```bash
zip file.zip folder/
```

### Unzip:
```bash
unzip file.zip
```

---

## 🔹 10. File Links (Soft & Hard Links)

### Soft link:
```bash
ln -s /path/original /path/link
```

### Hard link:
```bash
ln original_file link_file
```

---

## 🔹 11. File System & Disk Usage

```bash
df -h      # Disk usage
du -sh *   # Folder sizes
du -sh /var/log
```

---

## 🔹 12. Temporary Files Cleanup (Useful for DevOps)

```bash
rm -rf /tmp/*
rm -rf /var/tmp/*
journalctl --vacuum-time=3d   # Clean old logs
```

---

## 🔹 13. Common Real-World Use Cases

### Check log files for errors:
```bash
grep -i "error" /var/log/nginx/error.log
```

### Find large files:
```bash
find / -type f -size +100M
```

### Backup config:
```bash
cp /etc/nginx/nginx.conf nginx.conf.backup
```
