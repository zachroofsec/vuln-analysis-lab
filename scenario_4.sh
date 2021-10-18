#!/usr/bin/env bash
ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
     ubuntu@siem-main.lab <<'ENDSSH'
sudo docker stop apache-infected > /dev/null
sudo systemctl start apache2 > /dev/null
ENDSSH

