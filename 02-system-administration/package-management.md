# 🔹 System Administration --- Package Management

## 🔹 1. Introduction

Package managers simplify installation, updates, dependency resolution,
and patching.

Linux Package Types:
- **RPM** → RedHat/CentOS/Fedora
- **DEB** → Ubuntu/Debian

------------------------------------------------------------------------

## 🔹 2. RPM-based Systems (CentOS / RHEL)

### 🔹 2.1 yum / dnf

``` bash
yum install nginx -y
dnf update -y
yum remove nginx -y
yum search git
yum repolist
yum clean all
```

### 🔹 2.2 rpm

``` bash
rpm -qa | grep httpd
rpm -ivh package.rpm
rpm -V bash
rpm -qpR package.rpm
```

------------------------------------------------------------------------

## 🔹 3. DEB-based Systems (Ubuntu / Debian)

### 🔹 3.1 apt

``` bash
apt update
apt upgrade -y
apt install apache2 -y
apt search docker
```

### 🔹 3.2 dpkg

``` bash
dpkg -i package.deb
apt --fix-broken install
dpkg -l | grep nginx
```

------------------------------------------------------------------------

## 🔹 4. Third-Party Repositories

Ubuntu PPA:

``` bash
add-apt-repository ppa:ondrej/php
apt update
```

CentOS external repo:

``` bash
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

------------------------------------------------------------------------

## 🔹 5. Best Practices

-   Run updates regularly
-   Verify GPG signatures
-   Don't mix RPM/DEB tools
