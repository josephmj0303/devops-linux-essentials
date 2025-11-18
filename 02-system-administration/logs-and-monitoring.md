# 🔹 System Administration — Logs & Monitoring (DevOps Essentials)

## 🔹 1. Introduction
Log files are the backbone of troubleshooting and monitoring. They help identify:
- System errors
- Application failures
- Security incidents
- Performance issues

Monitoring ensures uptime, performance, and alerts before failures happen.

---

## 🔹 2. Linux Log Locations

### 🔹 2.1 /var/log Directory
Most system logs are stored here.

Common log files:
| Log File | Purpose |
|---------|---------|
| /var/log/messages | General system messages |
| /var/log/secure | Authentication logs (CentOS) |
| /var/log/auth.log | Authentication logs (Ubuntu/Debian) |
| /var/log/cron | Cron jobs |
| /var/log/dmesg | Kernel ring buffer |
| /var/log/boot.log | Boot process logs |

Useful commands:
```bash
ls -lh /var/log
tail -f /var/log/messages
grep "error" /var/log/secure
```

### 🔹 2.2 Application Logs

Apps may write logs inside: - `/var/log/<app-name>/` -
`/opt/<app>/logs/` - `/home/user/app/logs/`

Best practices: - Use dedicated log directories - Use timestamped log
file names - Use log rotation to limit size

------------------------------------------------------------------------

## 🔹 3. Log Management Tools

### 🔹 3.1 journalctl (systemd logs)

View all logs:

``` bash
journalctl
```

Follow real-time logs:

``` bash
journalctl -f
```

View logs for a specific service:

``` bash
journalctl -u nginx
```

Filter by boot:

``` bash
journalctl -b
```

Persistent logging:

``` bash
mkdir -p /var/log/journal
systemd-tmpfiles --create --prefix /var/log/journal
systemctl restart systemd-journald
```

------------------------------------------------------------------------

### 🔹 3.2 rsyslog

Restart:

``` bash
systemctl restart rsyslog
```

Config file:

    /etc/rsyslog.conf
    /etc/rsyslog.d/*.conf

Remote forwarding:

    *.*  @192.168.1.50:514

------------------------------------------------------------------------

### 🔹 3.3 Log Rotation (logrotate)

Manual rotation:

``` bash
logrotate -f /etc/logrotate.conf
```

Config:

    /etc/logrotate.d/

Example:

    /var/log/httpd/*.log {
        daily
        rotate 7
        compress
        missingok
        notifempty
    }

------------------------------------------------------------------------

## 🔹 4. Monitoring Tools

### 🔹 4.1 Resource Monitoring

``` bash
top         # Real-time CPU/memory usage
htop        # Enhanced top
vmstat 2    # Memory & CPU statistics
iostat 2    # Disk I/O
mpstat 2    # CPU usage breakdown
```

### 🔹 4.2 Network Monitoring

``` bash
ss -tulnp       # List listening ports
netstat -tulnp  # (Older systems)
iftop           # Live bandwidth usage
nload           # Network interface load
```

------------------------------------------------------------------------

## 🔹 5. Best Practices

-   Centralize logs (ELK / Loki / Splunk)
-   Use retention policies
-   Implement log forwarding
-   Integrate alerting
