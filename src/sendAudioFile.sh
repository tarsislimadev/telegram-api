#!/usr/bin/sh

. .env

path="sendAudio"

chat_id="${1}"

filename="${2}"

resp=$( curl -svL -F "audio=@${filename}" "https://api.telegram.org/bot${BOT_TOKEN}/${path}?chat_id=${chat_id}" )

. datetime.sh

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"

echo "${path}" "${datetime}" "${resp}"
