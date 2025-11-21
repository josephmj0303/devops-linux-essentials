# 🔹 System Administration --- Storage & Devices

## 🔹 1. Introduction

Linux identifies devices using:
- /dev/sda (HDD/SSD)
- /dev/nvme0n1 (NVMe drives)
- /dev/vda (cloud KVM storage)

------------------------------------------------------------------------

## 🔹 2. Disk Partitioning

### 🔹 2.1 Using fdisk

``` bash
fdisk -l    # List disks
fdisk /dev/sda    # Manage a disk
```

Options: 
- n → new partition
- d → delete
- p → print table
- w → write

### 🔹 2.2 Using parted (useful for GPT)

``` bash
parted /dev/sdb
mklabel gpt
mkpart primary ext4 0% 100%
print
quit
```

------------------------------------------------------------------------

## 🔹 3. Filesystems

Create FS:

``` bash
mkfs.ext4 /dev/sdb1
mkfs.xfs /dev/sdb1
```

Check FS:

``` bash
fsck /dev/sdb1
```

Mount:

``` bash
mount /dev/sdb1 /mnt    # Temporary mount
```

Permanent mount:

    /dev/sdb1 /data ext4 defaults 0 0    # Add to /etc/fstab

Mount all entries:

``` bash
mount -a
```

------------------------------------------------------------------------

## 🔹 4. LVM (Logical Volume Manager)

🔹 4.1 Create LVM Components

``` bash
pvcreate /dev/sdb1    # Create PV
vgcreate myvg /dev/sdb1    # Create VG
lvcreate -L 10G -n mylv myvg    # Create LV
mkfs.ext4 /dev/myvg/mylv    # Format
```

🔹 4.2 Extend LV

``` bash
lvextend -L +5G /dev/myvg/mylv    # Extend LV
resize2fs /dev/myvg/mylv    # Resize filesystem
```

------------------------------------------------------------------------

## 🔹 5. Storage Monitoring

``` bash
df -h      # Disk usage
du -sh *   # Directory size
lsblk      # Block devices
iostat     # Disk I/O stats

```

------------------------------------------------------------------------

## 🔹 6. Best Practices

-   Use LVM for flexibility
-   Monitor disk alerts
-   Use RAID for redundancy
