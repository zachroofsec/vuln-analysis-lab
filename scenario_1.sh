#!/usr/bin/env bash

echo "Process will take ~15 seconds to complete"

ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
     ubuntu@siem-log-collector.lab <<'ENDSSH'
sudo shutdown now > /dev/null
ENDSSH

sleep 15
echo "Process finished!"
