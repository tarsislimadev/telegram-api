#!/usr/bin/sh

for update in $( ls "./data/getUpdates" )

do

for file_id in $( cat "./data/getUpdates/${update}/resp.json" | jq ".result[].message?.video?.file_id" )

do

sh ./src/getFile.sh "${file_id}"

done

done
