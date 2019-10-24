#!/bin/sh

set -e

export AWS_ACCESS_KEY_ID=$INPUT_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$INPUT_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION=$INPUT_REGION
export VARIABLES=$INPUT_VARIABLES

cd $INPUT_PATH

echo "terraform init -input=false"
terraform init -input=false

var_args=""
VARIABLES=$(echo "$VARIABLES" | tr "," "\n")
for var in $VARIABLES; do
  var_args="$var_args -var $var"
done

echo "terraform apply -no-color -input=false -auto-approve $var_args"
terraform apply -no-color -input=false -auto-approve $var_args