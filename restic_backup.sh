#!/bin/bash

export RESTIC_PASSWORD=$2

# Main Backup Logic
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo $line
    if [ -d $1 ]; then
        /usr/local/bin/restic -r $1 backup $line
    fi
done < "$HOME/.restic_backup.conf"