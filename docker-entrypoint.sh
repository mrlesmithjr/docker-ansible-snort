#!/bin/bash
ansible-playbook -i "localhost," -c local /docker-entrypoint.yml

snort -c /etc/snort/snort.conf -i $SNORT_INT
