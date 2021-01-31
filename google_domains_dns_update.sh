#!/bin/bash
# usage: see README.md
# Copyright (c) 2021 John Paul Krieg

wget https://username:password@domains.google.com/nic/update?hostname=subdomain.yourdomain.com -O DNS_RESPONSE_WWW.txt

echo "DNS Updated @ `date`" >> DNS_UPDATE_LOG.txt
