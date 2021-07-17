#!/bin/sh
#
# TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection: The ultimate collection of scripts for YouTube-DL
# https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection
# https://github.com/TheFrenchGhosty
#
# Version: 3.1.1
#

yt-dlp --format "(bestaudio[acodec^=opus]/bestaudio)/best" --verbose --force-ipv4 --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --ignore-errors --no-continue --no-overwrites --download-archive archive.log --add-metadata --extract-audio --output "%(uploader)s - %(upload_date)s - %(title)s [%(id)s].%(ext)s" --extractor-args youtube:player_client=android --throttled-rate 100K --batch-file "Source - Listen.txt" 2>&1 | tee output.log
