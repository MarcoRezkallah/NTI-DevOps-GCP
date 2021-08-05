#!/bin/bash

mkdir -p log

terraform plan -out tfplan 2>&1 | tee log/plan.log
