#!/usr/bin/env python

import os

url = os.getenv('QUTE_URL')

if "youtube.com/watch" in url:
    url = url.replace("watch", "watch_popup")
    url += "&autoplay=1"
    command = f":spawn librewolf -P yt-player {url}"

elif "medium.com" in url:
    url = "https://freedium.cfd/" + url
    command = f":open -t {url}"

with open(os.getenv('QUTE_FIFO'), 'a') as fifo:
    fifo.write(command + '\n')
