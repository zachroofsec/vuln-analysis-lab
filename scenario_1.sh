#!/usr/bin/env bash

ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
     ubuntu@siem-log-collector.lab <<'ENDSSH'
sudo shutdown now > /dev/null
ENDSSH
