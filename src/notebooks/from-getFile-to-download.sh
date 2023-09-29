#!/usr/bin/sh

for files in $( ls "./data/getFile" )

do

for file in $files

do

file_path=$( cat "./data/getFile/${file}/resp" | jq ".result.file_path" )

bash ./src/getters/download.sh "$( bash lines.sh "${file_path}" )"

done

done
