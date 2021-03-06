#!/bin/bash

# This script takes 20-30 minutes to run, and creates an image similar to ami-ea154180, which is the public image that we provide for the us-east-1 region.
set -e
ansible-playbook -i ./ec2.py build-start.yml
ansible-playbook -i ./ec2.py build.yml --tags base
ansible-playbook -i ./ec2.py build-finish.yml  --tags base
