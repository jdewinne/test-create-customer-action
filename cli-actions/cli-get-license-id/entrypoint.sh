#!/bin/sh -l

/replicated $@ > license.json

LICENSE_ID=$(cat license.json | yq -r '.spec.licenseID')

echo "license-id=$LICENSE_ID" >> $GITHUB_OUTPUT
