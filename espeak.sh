#!/usr/bin/sh

setence="${1}"

filename="${2}"

espeak -s 140 -v pt-br "${setence}" -w "${filename}.wav"
