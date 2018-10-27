#!/bin/bash

# Search these processes for the session variable 
# (they are run as the current user and have the DBUS session variable set)
compatiblePrograms=( gvfsd pulseaudio )

# Attempt to get a program pid
for index in ${compatiblePrograms[@]}; do
	PID=$(pidof -s ${index})
	if [[ "${PID}" != "" ]]; then
		break
	fi
done

if [[ "${PID}" == "" ]]; then
	# No processes found using existing dbus session
    QUERY_ENVIRON=""
else
    QUERY_ENVIRON="$(tr '\0' '\n' < /proc/${PID}/environ | grep "DBUS_SESSION_BUS_ADDRESS" | cut -d "=" -f 2-)"
fi

if [[ "${QUERY_ENVIRON}" != "" ]]; then
	export DBUS_SESSION_BUS_ADDRESS="${QUERY_ENVIRON}"
	echo "Connected to session, DBUS_SESSION_BUS_ADDRESS:"
    echo "${DBUS_SESSION_BUS_ADDRESS}"
    far2l --tty
else
	echo "Could not find dbus session ID in user environment."
    echo "Starting new dbus session."
    dbus-launch far2l --tty
fi
