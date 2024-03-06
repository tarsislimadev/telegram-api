#!/usr/bin/sh

# inputs

path="getFile"

. datetime.sh

file_id=$( sh lines.sh "${1}" )

# runner

resp=$( sh get.sh "${path}" "file_id=${file_id}" )

# outputs

sh create.sh "${path}" "${file_id}" "resp.json" "${resp}"

sh create.sh "${path}" "${file_id}" "datetime" "${datetime}"
