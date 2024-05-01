#!/usr/bin/sh

path="getChat"

datetime=$( date +%Y%m%d%H%M%S )

chat_id="${1}"

resp=$( . get.sh "${path}" "chat_id=${chat_id}" )

. create.sh "${path}" "${chat_id}" "resp.json" "${resp}"

. create.sh "${path}" "${chat_id}" "datetime" "${datetime}"
