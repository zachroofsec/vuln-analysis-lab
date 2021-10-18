#!/usr/bin/env bash

ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
     ubuntu@siem-main.lab <<'ENDSSH'
sudo docker stop apache-clean > /dev/null
sudo docker run -d --rm --name apache-inflected -p 443:443 zachroofsec/kube-hunter-tutorial > /dev/null
ENDSSH