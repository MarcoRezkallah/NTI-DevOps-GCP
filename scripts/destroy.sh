#!/bin/bash

mkdir -p log

terraform destroy -auto-approve -var-file="main.tfvars" 2>&1 | tee log/destroy.log
