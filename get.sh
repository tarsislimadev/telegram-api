#!/usr/bin/sh

. .env

path="${1}"

parameters="${2}"

curl -sL -X GET "https://api.telegram.org/bot${BOT_TOKEN}/${path}?${parameters}"
