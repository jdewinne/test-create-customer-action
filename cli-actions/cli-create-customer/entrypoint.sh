#!/bin/sh -l

/replicated $@ > customer.json

CUSTOMER_ID=$(cat customer.json | jq -r '.id')
echo "customer-id=$CUSTOMER_ID" >> $GITHUB_OUTPUT