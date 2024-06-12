#!/bin/bash
##################################
# Author: Soul
# Date: 11th-Jun
#
# Version: v1
#
# This script will report the AWS resource usage
# ################################

# it puts the script in debugger mode and print the commands and then executes them
set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# lsit S3 buckets
echo "Print list of s3 buckets"
aws s3 ls


# list EC2 Instance
echo "Print list of ec2 instances"
aws ec2 describe-instances


# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of IAM users"
aws iam list-users

# to extract information from the retuned heavy data
# aws ec2 describe-instance | jq ".Reservation[].Instances[].InstanceId
# so here we extracting the InstanceID from json that way we also used "jq" it works as json parser


