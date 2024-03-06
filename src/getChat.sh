#!/usr/bin/sh

# inputs

path="getChat"

datetime=$( date +%Y%m%d%H%M%S )

chat_id="${1}"

# runner

resp=$( sh get.sh "${path}" "chat_id=${chat_id}" )

# outputs

sh create.sh "${path}" "${chat_id}" "resp.json" "${resp}"

sh create.sh "${path}" "${chat_id}" "datetime" "${datetime}"
