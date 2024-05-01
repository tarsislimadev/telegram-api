#!/usr/bin/sh

path="sendMessage"

chat_id="${1}"

text="${2}"

resp=$( . get.sh "${path}" $( . ./urlencode.sh "chat_id=${chat_id}&text=${text}" ) )

datetime=$( date +%Y%m%d%H%M%S )

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
