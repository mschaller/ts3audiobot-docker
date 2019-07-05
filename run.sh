#!/bin/sh
cd /opt/TS3AudioBot

echo "asdf" > /opt/TS3AudioBot/boink.txt

if [ ! -f "/opt/TS3AudioBot/TS3AudioBot.exe" ]; then
    wget -O TS3AudioBot.zip https://splamy.de/api/nightly/ts3ab/master/download
    unzip TS3AudioBot.zip
else
    mono TS3AudioBot.exe
fi


