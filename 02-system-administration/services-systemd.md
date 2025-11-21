# 🔹 System Administration --- Services & systemd

## 🔹 1. Introduction

systemd controls service startup, shutdown, and dependencies.

Unit types:
- `.service` — Service units
- `.timer` — Scheduled tasks
- `.mount` — Filesystem mounts
- `.target` — Boot-level groupings

------------------------------------------------------------------------

## 🔹 2. Managing Services

``` bash
systemctl start nginx
systemctl stop nginx
systemctl restart nginx
systemctl enable nginx
systemctl disable nginx
systemctl status nginx
systemctl list-units --type=service
```

------------------------------------------------------------------------

## 🔹 3. Inspect Logs

``` bash
journalctl -u nginx    # Logs for a specific unit
journalctl -u nginx -f    # Real-time
journalctl -b    # Logs since last boot
```

------------------------------------------------------------------------

## 🔹 4. Custom Service Files

Path:

    /etc/systemd/system/myapp.service

Example:

    [Unit]
    Description=My App
    After=network.target

    [Service]
    ExecStart=/usr/bin/python3 /opt/myapp/app.py
    Restart=always
    User=ec2-user

    [Install]
    WantedBy=multi-user.target

Commands:

``` bash
systemctl daemon-reload
systemctl start myapp
systemctl enable myapp
```

------------------------------------------------------------------------

## 🔹 5. Troubleshooting

``` bash
systemctl --failed
journalctl -xe
systemd-analyze verify /etc/systemd/system/myapp.service
```

------------------------------------------------------------------------

## 🔹 6. Best Practices

-   Use Restart=always
-   Prefer systemd timers over cron
