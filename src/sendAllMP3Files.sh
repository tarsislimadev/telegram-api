#!/usr/bin/sh

user_id="${1}"

for i in $( ls *mp3 ); do . ./src/sendAudioFile.sh "${user_id}" "${i}" ; done ; 
