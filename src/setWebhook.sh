#!/usr/bin/sh

. .env

path="setWebhook"

url="${1}" # https://12.13.14.15

resp=$( . get.sh "${path}" $( . ./urlencode.sh "url=${url}" ) )

datetime=$( date +%Y%m%d%H%M%S )

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
