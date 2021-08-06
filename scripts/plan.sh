#!/bin/bash

mkdir -p log

terraform plan -out tfplan -var-file="main.tfvars" 2>&1 | tee log/plan.log
