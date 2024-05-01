#!/usr/bin/sh

. .env

path="sendAudio"

chat_id="${1}"

text="${2}"

. datetime.sh

. espeak.sh "${text}" "${datetime}"

. ffmpeg.sh "${datetime}" "${datetime}"

resp=$( curl -svL -F "audio=@${datetime}.mp3" "https://api.telegram.org/bot${BOT_TOKEN}/${path}?chat_id=${chat_id}" )

. datetime.sh

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"

echo "${path}" "${datetime}" "${resp}"
