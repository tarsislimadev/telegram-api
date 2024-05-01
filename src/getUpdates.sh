#!/usr/bin/sh

path="getUpdates"

resp=$( . get.sh "${path}" )

. datetime.sh

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
