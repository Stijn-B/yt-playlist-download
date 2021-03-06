# Downloading Youtube Playlists

The script iterates over the youtube playlist IDs in the playlist_ids.txt files and downloads them using [youtube-dl](https://youtube-dl.org)
.

Videos are downloaded to a playlist-directory inside the directory of the script.

Downloads.txt is generated to remember which videos have been downloaded, these are skipped on the next run. As a result the script can just be rerun for an incremental update when the playlist is expanded.

Videos no longer present in the playlist are *not* deleted locally

## Note
The playlists should be public or unlisted (not private) because this script doesn't use account credentials

## Requirements
- [youtube-dl](https://youtube-dl.org)
- [jq](https://stedolan.github.io/jq)

### Installing requirements on Ubuntu

```
sudo pip install --upgrade youtube_dl
sudo apt-get install jq
```