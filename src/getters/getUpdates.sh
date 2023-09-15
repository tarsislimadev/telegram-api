#!/usr/bin/sh

# inputs

path="getUpdates"

# runner

resp=$( bash get.sh "${path}" | jq )

datetime=$( date +%Y%m%d%H%M%S )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
