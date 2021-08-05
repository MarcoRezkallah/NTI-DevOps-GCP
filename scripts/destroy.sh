#!/bin/bash

mkdir -p log

terraform destroy -auto-approve 2>&1 | tee log/destroy.log
