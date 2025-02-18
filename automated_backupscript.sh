#!/bin/bash
#!/bin/bash

BACKUP_SRC="/home/user/data/"
BACKUP_DEST="/backup/"
TIMESTAMP=$(date +%F-%H%M%S)
BACKUP_FILE="$BACKUP_DEST/backup-$TIMESTAMP.tar.gz"

tar -czf $BACKUP_FILE $BACKUP_SRC
echo "Backup completed: $BACKUP_FILE"

