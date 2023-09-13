#!/usr/bin/sh

# inputs

path="getChat"

datetime=$( date +%Y%m%d%H%M%S )

chat_id="${1}"

# runner

resp=$( bash get.sh "${path}" "chat_id=${chat_id}" | jq )

# outputs

bash create.sh "${path}" "${chat_id}" "resp" "${resp}"

bash create.sh "${path}" "${chat_id}" "datetime" "${datetime}"
