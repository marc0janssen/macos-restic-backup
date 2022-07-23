#!/bin/bash

cp ./restic_backup.sh /usr/local/bin/restic_backup.sh
chmod +x /usr/local/bin/restic_backup.sh

cp ./restic_cleanup.sh /usr/local/bin/restic_cleanup.sh
chmod +x /usr/local/bin/restic_cleanup.sh

sudo cp ./nl.mjanssen.restic_backup_local.plist /Library/LaunchDaemons/nl.mjanssen.restic_backup_local.plist
sudo cp ./nl.mjanssen.restic_backup_remote.plist /Library/LaunchDaemons/nl.mjanssen.restic_backup_remote.plist

sudo cp ./nl.mjanssen.restic_cleanup_local.plist /Library/LaunchDaemons/nl.mjanssen.restic_cleanup_local.plist
sudo cp ./nl.mjanssen.restic_cleanup_remote.plist /Library/LaunchDaemons/nl.mjanssen.restic_cleanup_remote.plist

cp ./.restic_backup.conf ~/.restic_backup.conf

launchctl unload /Library/LaunchDaemons/nl.mjanssen.restic_backup_local.plist
launchctl load /Library/LaunchDaemons/nl.mjanssen.restic_backup_local.plist

launchctl unload /Library/LaunchDaemons/nl.mjanssen.restic_backup_remote.plist
launchctl load /Library/LaunchDaemons/nl.mjanssen.restic_backup_remote.plist

launchctl unload /Library/LaunchDaemons/nl.mjanssen.restic_cleanup_local.plist
launchctl load /Library/LaunchDaemons/nl.mjanssen.restic_cleanup_local.plist

launchctl unload /Library/LaunchDaemons/nl.mjanssen.restic_cleanup_remote.plist
launchctl load /Library/LaunchDaemons/nl.mjanssen.restic_cleanup_remote.plist