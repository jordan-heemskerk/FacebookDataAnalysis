#!/bin/bash
aws emr add-steps --cluster-id j-YWXUCU24NOSX --steps '[{"Args":["-files","s3://facebook-analysis/bin/wc,s3://facebook-analysis/bin/wc","-mapper","wc map","-reducer","wc reduce","-input","s3://facebook-analysis/input/input.txt","-output","s3://facebook-analysis/output_'$1'"],"Type":"CUSTOM_JAR","ActionOnFailure":"CONTINUE","Jar":"/home/hadoop/contrib/streaming/hadoop-streaming.jar","Properties":"","Name":"Streaming program"}]'
