#!/usr/bin/sh

# inputs

. .env

path="sendAudio"

chat_id="${1}"

text="${2}"

. datetime.sh

sh espeak.sh "${text}" "${datetime}"

sh ffmpeg.sh "${datetime}" "${datetime}"

# runner

resp=$( curl -svL -F "audio=@${datetime}.mp3" "https://api.telegram.org/bot${BOT_TOKEN}/${path}?chat_id=${chat_id}" )

. datetime.sh

# outputs

sh create.sh "${path}" "${datetime}" "datetime" "${datetime}"

sh create.sh "${path}" "${datetime}" "resp.json" "${resp}"

echo "${path}" "${datetime}" "${resp}"
