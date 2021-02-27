#!/bin/bash
steamcmd \
	+login anonymous \
	+force_install_dir /home/steam/valheim \
	+app_update 896660 \
	+app_update 896660 validate \
	+exit
