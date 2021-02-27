#!/bin/bash
export SteamAppId=892970

LOG_PREFIX=/var/log/valheim/server_

WORLD=${1}

source /etc/valheim/${WORLD}.conf

/home/steam/valheim/valheim_server.x86_64 \
	-name "${SERVER}" \
	-port ${PORT} \
	-world "${WORLD}" \
	-password "${PASS}" > ${LOG_PREFIX}${WORLD}_$(date +"%Y%m%d_%H%M").log 2> ${LOG_PREFIX}${WORLD}_$(date +"%Y%m%d_%H%M").err
