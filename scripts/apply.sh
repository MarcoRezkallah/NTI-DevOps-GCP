#!/bin/bash

mkdir -p log

terraform apply -auto-approve 2>&1 | tee log/apply.log