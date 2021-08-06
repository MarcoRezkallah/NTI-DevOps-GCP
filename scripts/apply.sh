#!/bin/bash

mkdir -p log

terraform apply -auto-approve -var-file="main.tfvars" 2>&1 | tee log/apply.log