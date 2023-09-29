#!/usr/bin/sh

# inputs

. .env

path="${1}"

wget "https://api.telegram.org/file/bot${BOT_TOKEN}/${path}"
