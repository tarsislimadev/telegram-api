#!/usr/bin/sh

# inputs

path="getFile"

. datetime.sh

file_id=$( bash lines.sh "${1}" )

# runner

resp=$( bash get.sh "${path}" "file_id=${file_id}" )

# outputs

bash create.sh "${path}" "${file_id}" "resp.json" "${resp}"

bash create.sh "${path}" "${file_id}" "datetime" "${datetime}"
