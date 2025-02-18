#!/bin/bash

SFTP_SERVER="sftp.example.com"
USER="your sftp user"
LOCAL_DIR="/path/to/local/files"
REMOTE_DIR="/path/to/remote/files"

sftp $USER@$SFTP_SERVER <<EOF
cd $REMOTE_DIR
put $LOCAL_DIR*
bye 
EOF

echo "SFTP transfer completed!"
