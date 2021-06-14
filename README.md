# Downloading Youtube Playlists

The script iterates over the youtube playlist IDs in the playlist_ids.txt files and downloads them.

Videos are downloaded to a playlist-directory inside the directory of the script.

Downloads.txt is generated to remember which videos have been downloaded, these are skipped on the next run. As a result the script can just be rerun for an incremental update when the playlist is expanded.

Videos no longer present in the playlist are *not* deleted locally

## Note
The playlists should be public or unlisted (not private) because this script doesn't use account credentials
