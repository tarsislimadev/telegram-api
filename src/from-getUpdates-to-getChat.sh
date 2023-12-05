#!/usr/bin/sh

path="getUpdates"

for update in $( ls "./data/${path}/" )

do

for chat_id in $( cat "data/getUpdates/${update}/resp.json" | jq ".result[].message.chat.id" )

do

. ./src/getChat.sh "${chat_id}"

done

done
