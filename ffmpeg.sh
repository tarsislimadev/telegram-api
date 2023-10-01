#!/usr/bin/sh

input="${1}"

output="${2}"

ffmpeg -i "${input}.wav" "${output}.mp3"
