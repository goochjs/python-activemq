#!/bin/bash

# Example command line syntax

# create policy
rabbitmqctl set_policy DLX ".*" '{"dead-letter-exchange":"DLX"}' --apply-to queues

# list user permissions
rabbitmqctl list_user_permissions USERNAME

# import definitions
rabbitmqadmin -u admin -p password -q import /mnt/rabbitmq/config/rabbitmq-defs.json

# list queues on remote host (where console is proxied through port 443)
./rabbitmqadmin -H hostname -P 443 --ssl -u admin -p password list queues
