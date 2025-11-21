#!/bin/bash
SOURCE_DIR="/var/www"
BACKUP_DIR="/backup"
DATE=$(date +%F-%H-%M)

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/backup-$DATE.tar.gz" "$SOURCE_DIR"

echo "Backup completed: $BACKUP_DIR/backup-$DATE.tar.gz"
