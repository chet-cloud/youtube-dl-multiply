#!/usr/bin/env bash
# Takes a YouTube URI to a playlist (fairly liberal, it's fine as long
# as the playlist id can be extracted), and prints a list of URIs in a
# YouTube playlist.
#
# Requires youtube-dl 2014.10.24, tested on youtube-dl
# 2014.11.02.1. Feature subject to change.
youtube-dl -j --flat-playlist "$1" | jq -r '.id' | sed 's_^_https://youtube.com/v/_'
