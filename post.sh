#!/usr/bin/sh

# inputs

. .env

path="${1}"

parameters="${2}"

curl -sL -X POST "https://api.telegram.org/bot${BOT_TOKEN}/${path}?${parameters}"
