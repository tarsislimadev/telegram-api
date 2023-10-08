#!/usr/bin/sh

for files in $( ls "./data/getFile" )

do

for file in $files

do

file_path=$( cat "./data/getFile/${file}/resp.json" | jq ".result.file_path" )

bash ./src/getters/download.sh "$( bash lines.sh "${file_path}" )" "./data/download"

done

done
