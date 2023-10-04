#!/usr/bin/sh

# inputs

. .env

path="sendAudio"

chat_id="${1}"

text="${2}"

. datetime.sh

bash espeak.sh "${text}" "${datetime}"

bash ffmpeg.sh "${datetime}" "${datetime}"

# runner

resp=$( curl -svL -F "audio=@${datetime}.mp3" "https://api.telegram.org/bot${BOT_TOKEN}/${path}?chat_id=${chat_id}" )

. datetime.sh

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
