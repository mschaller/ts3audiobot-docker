#!/bin/sh

set -e

if [ ! -f "TS3AudioBot.exe" ]; then
    wget -O TS3AudioBot.zip https://splamy.de/api/nightly/ts3ab/master/download
    unzip TS3AudioBot.zip
    rm TS3AudioBot.zip
fi

mono TS3AudioBot.exe
