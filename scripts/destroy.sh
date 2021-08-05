#!/bin/bash

mkdir -p log

terraform destroy 2>&1 | tee log/destroy.log
