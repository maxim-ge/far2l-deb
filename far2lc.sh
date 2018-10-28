#!/bin/bash

# Apply console quirks if required
if [[ $* == *-f* ]]; then
    if [[ $EUID -ne 0 ]]; then
        rm -rf ~/.config/far2l/REG/HKU/c/k-Software/k-Far2/k-Colors
        rm -rf ~/.config/far2l/REG/HKU/c/k-Software/k-Far2/k-Plugins/k-colorer/v-HrdName
    else
        rm -rf /root/.config/far2l/REG/HKU/c/k-Software/k-Far2/k-Colors
        rm -rf /root/.config/far2l/REG/HKU/c/k-Software/k-Far2/k-Plugins/k-colorer/v-HrdName
    fi
elif [[ $* == *-8* ]]; then
    if [[ $EUID -ne 0 ]]; then
        cd ~
        unzip -o /usr/lib/far2l/quirks_far2l_vt.zip
    else
        cd /root
        unzip -o /usr/lib/far2l/quirks_far2l_vt.zip
    fi
fi
if [[ $EUID -ne 0 ]]; then
    cd ~
    unzip -o /usr/lib/far2l/quirks_common.zip
else
    cd /root
    unzip -o /usr/lib/far2l/quirks_common.zip
fi

# Search processes for the session variable 
PID=$(pgrep -nU $USER gvfsd)
if [[ "${PID}" == "" ]]; then
    PID=$(pgrep -nU $USER pulseaudio)
fi

if [[ "${PID}" == "" ]]; then
    # No processes found using existing dbus session
    QUERY_ENVIRON=""
else
    QUERY_ENVIRON="$(tr '\0' '\n' < /proc/${PID}/environ | grep "DBUS_SESSION_BUS_ADDRESS" | cut -d "=" -f 2-)"
fi

if [[ "${DBUS_SESSION_BUS_ADDRESS}" != "" ]]; then
    far2l --tty
elif [[ "${QUERY_ENVIRON}" != "" ]]; then
    export DBUS_SESSION_BUS_ADDRESS="${QUERY_ENVIRON}"
    echo "Connected to session, DBUS_SESSION_BUS_ADDRESS:"
    echo "${DBUS_SESSION_BUS_ADDRESS}"
    far2l --tty
else
    echo "Could not find dbus session ID in user environment."
    echo "Starting new dbus session."
    dbus-launch far2l --tty
fi
