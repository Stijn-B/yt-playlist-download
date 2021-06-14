#!/bin/bash

# RUN WITH:
# > bash backup_script.sh
# Don't forget to put the id's of your playlists in the playlist_ids.txt file

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "Running Youtube playlists backup script"

while read playlist_id; do

	# Get the name of the playlist
	playlist_title=$(youtube-dl -J --flat-playlist "$playlist_id" | jq -r .title) || exit
	
	# Determine the local folder
	PLAYLIST_DIR="$SCRIPT_DIR/$playlist_title [$playlist_id]"
	mkdir "$PLAYLIST_DIR"
	
	# Download Playlist
	echo "$PLAYLIST_DIR"
	youtube-dl -i -f mp4 --yes-playlist --download-archive "$PLAYLIST_DIR/downloaded.txt" -o "$PLAYLIST_DIR/%(title)s [%(id)s].%(ext)s" "$playlist_id"
	
done <playlist_ids.txt
