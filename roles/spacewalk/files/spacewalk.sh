#!/bin/bash
if ! [ -f "/opt/.spacewalk_initialized" ]; then
    spacewalk-setup --non-interactive --answer-file=/tmp/answers creates=/var/satellite
    sleep 5
    touch /opt/.spacewalk_initialized
fi
spacewalk-service start
exit 0