



#!/bin/bash


#############Write a script to report the usage of AWS usage######################################
# Author Name: Prashant Kumar Singh
# Date: 06-06-24
# Description: Write a script to report the usage of AWS usages
#
#
############################END####################################################################



set -x
echo "List S3 Bucket"
aws s3 ls  >>resource-tracker

echo "List of Ec2 instances"
#aws ec2 describe-instances
# To find the specific instances Id Name only
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'>>resource-tracker  #jq is used for json parsing and yq is used for yaml parsing
echo "List Lambda"
aws lambda list-functions >>resource-tracker

echo "List IAM Users"
aws iam get-user  >>resource-tracker


