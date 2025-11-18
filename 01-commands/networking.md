# Networking Commands (DevOps Essentials)

Networking is a core DevOps skill for troubleshooting servers, debugging deployments, fixing DNS issues, checking connectivity, and validating network configurations across cloud and on-prem systems.

This guide covers the most important Linux networking commands with real-world DevOps use cases.

---

## 🔹 1. Check IP Address & Network Interfaces

### Show all interfaces (old command)
    ifconfig

### Show interface details (recommended)
    ip addr
    ip a

### Show routing table
    ip route

---

## 🔹 2. Test Network Connectivity

### Ping a host
    ping google.com

### Ping with a fixed number of packets
    ping -c 4 google.com

### Trace route to destination
    traceroute google.com

### Alternative trace route
    tracepath google.com

---

## 🔹 3. DNS Lookup & Domain Testing

### Basic DNS lookup
    nslookup google.com

### Detailed DNS lookup
    dig google.com

### Query specific DNS record
    dig A google.com
    dig MX google.com
    dig NS google.com

---

## 🔹 4. Check Open Ports & Listening Services

### List listening ports
    ss -tulnp

### List TCP ports
    ss -lnt

### Check which process owns a port
    sudo lsof -i :8080

---

## 🔹 5. Test Port Connectivity

### Check if remote port is reachable
    nc -zv google.com 443

### Create a temporary listener
    nc -l 9000

---

## 🔹 6. Hostname & System Identity

### Show hostname
    hostname

### Show full FQDN
    hostname -f

### Change hostname
    sudo hostnamectl set-hostname new-hostname

---

## 🔹 7. ARP & Neighbor Table

### View ARP cache
    arp -a

### View neighbor table (modern)
    ip neigh

---

## 🔹 8. Firewall Checks

### Check firewall status (UFW)
    sudo ufw status

### Check firewall status (CentOS/RHEL)
    sudo firewall-cmd --list-all

### Allow a port (UFW)
    sudo ufw allow 8080

---

## 🔹 9. View Active Network Connections

### List active network connections
    netstat -tulnp

### Modern alternative
    ss -tulnp

---

## 🔹 10. Common Troubleshooting Examples

### Check if a service is using a port
    ss -lntp | grep 3000

### Debug DNS issues
    dig google.com
    nslookup google.com

### Check if server can reach external services
    curl https://google.com

### Verify webserver (Nginx/Apache) is listening
    ss -lntp | grep nginx

### Test connectivity between servers
    ping <server-ip>
    nc -zv <server-ip> 22

---
