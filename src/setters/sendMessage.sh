#!/usr/bin/sh

# inputs

path="sendMessage"

chat_id="${1}"

text="${2}"

# runner

resp=$( bash get.sh "${path}" $( bash ./urlencode.sh "chat_id=${chat_id}&text=${text}" ) )

datetime=$( date +%Y%m%d%H%M%S )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
