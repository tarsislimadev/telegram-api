#!/usr/bin/sh

# inputs

path="getUpdates"

# runner

resp=$( bash get.sh "${path}" | jq )

. datetime.sh

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
