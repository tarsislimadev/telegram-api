#!/usr/bin/sh

. .env

path="${1}"

dirname="${2}"

mkdir -p "${dirname}"

wget --directory-prefix=$dirname "https://api.telegram.org/file/bot${BOT_TOKEN}/${path}"
