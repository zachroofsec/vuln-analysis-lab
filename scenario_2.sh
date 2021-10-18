#!/usr/bin/env bash

ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
     ubuntu@siem-main.lab sudo docker run -d --rm --name apache-clean -p 443:443 zachroofsec/ps-lab-openvas-apache-non-vuln > /dev/null
