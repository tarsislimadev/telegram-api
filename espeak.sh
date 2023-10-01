#!/usr/bin/sh

. datetime.sh

setence="${1}"

espeak -s 140 -v pt-br "${setence}" -w ".${datetime}.wav"
