#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/KeyPair.pem ec2-user@18.138.58.169 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name Cluster01; ~/update_snapshot.sh data 2 Cluster01"
