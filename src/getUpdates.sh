#!/usr/bin/sh

# inputs

path="getUpdates"

# runner

resp=$( sh get.sh "${path}" )

. datetime.sh

# outputs

sh create.sh "${path}" "${datetime}" "datetime" "${datetime}"

sh create.sh "${path}" "${datetime}" "resp.json" "${resp}"
