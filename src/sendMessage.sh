#!/usr/bin/sh

# inputs

path="sendMessage"

chat_id="${1}"

text="${2}"

# runner

resp=$( sh get.sh "${path}" $( sh ./urlencode.sh "chat_id=${chat_id}&text=${text}" ) )

datetime=$( date +%Y%m%d%H%M%S )

# outputs

sh create.sh "${path}" "${datetime}" "datetime" "${datetime}"

sh create.sh "${path}" "${datetime}" "resp.json" "${resp}"
