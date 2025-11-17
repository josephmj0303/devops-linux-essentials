# Linux Process Management (DevOps Essentials)

Managing processes is a critical DevOps skill for troubleshooting servers, containers, CI/CD agents, application nodes, and cloud VMs.  
This guide covers the essential tools and real-world use cases.

---

## 🔹 1. Viewing Running Processes

### List all running processes
```bash
ps aux
```

### Filter processes (most common usage)
```bash
ps aux | grep nginx
ps aux | grep java
```

### View processes in tree format
```bash
pstree
pstree -p     # Show PIDs
```

---

## 🔹 2. Real-Time Process Monitoring

### System load + CPU/Memory usage
```bash
top
```

### More modern version (recommended)
```bash
htop
```
*(Install using apt/yum if missing.)*

---

## 🔹 3. Check CPU, Memory, I/O

### Show CPU usage per process:
```bash
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head
```

### Memory-heavy processes:
```bash
ps -eo pid,cmd,%mem --sort=-%mem | head
```

### Disk I/O usage:
```bash
iotop    # If installed
```

---

## 🔹 4. Kill Processes

### Kill gracefully (SIGTERM)
```bash
kill PID
```

### Force kill (SIGKILL)
```bash
kill -9 PID
```

### Kill by process name
```bash
pkill nginx
pkill java
```

### Kill all matching processes
```bash
killall python
```

---

## 🔹 5. Foreground & Background Jobs

### Run process in background:
```bash
command &
```

### Bring job to foreground:
```bash
fg
```

### List background jobs:
```bash
jobs
```

### Stop a running job:
```bash
Ctrl + Z
```

### Resume job in background:
```bash
bg
```

---

## 🔹 6. Check Ports & Associated Processes

### What is listening on a port?
```bash
sudo lsof -i :8080
```

### List all open network ports:
```bash
ss -tulnp
```

### Example:
Identify which service is using port 3000:
```bash
ss -lntp | grep 3000
```

Useful for:
- Jenkins port conflicts  
- Nginx/Apache failures  
- Docker container issues  

---

## 🔹 7. Managing Daemons (Systemd Services)

### Check service status:
```bash
systemctl status nginx
```

### Start / Stop / Restart:
```bash
systemctl start nginx
systemctl stop nginx
systemctl restart nginx
```

### Enable service on boot:
```bash
systemctl enable docker
systemctl disable docker
```

---

## 🔹 8. CPU & Memory Stats (Quick Troubleshooting)

### CPU Load:
```bash
uptime
```

### Memory:
```bash
free -h
```

### Disk usage:
```bash
df -h
```

---

## 🔹 9. Process Priority & Nice Values

### Run command with lower priority:
```bash
nice -n 10 myscript.sh
```

### Change priority of running process:
```bash
renice 5 -p PID
```

---

## 🔹 10. Real-world DevOps Scenarios

### 🔸 1. Check why app server is slow
```bash
top
ps aux --sort=-%cpu | head
free -h
df -h
```

### 🔸 2. Restart application after failure
```bash
systemctl status myapp
systemctl restart myapp
```

### 🔸 3. Kill stuck Java or Node process
```bash
pkill java
pkill node
```

### 🔸 4. Find which process is blocking Jenkins port 8080
```bash
ss -lntp | grep 8080
```

### 🔸 5. Check Docker consuming high CPU
```bash
docker stats
```
