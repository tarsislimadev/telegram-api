#!/usr/bin/sh

path="getFile"

. datetime.sh

file_id=$( . lines.sh "${1}" )

resp=$( . get.sh "${path}" "file_id=${file_id}" )

. create.sh "${path}" "${file_id}" "resp.json" "${resp}"

. create.sh "${path}" "${file_id}" "datetime" "${datetime}"
