#!/bin/bash
##
#author= shadab
#versionm = 1
#date=11/10/2024

#
#echo "Printing AWS resources, EC2, lambda functions, s3 buckets and IAM roles"

#Printing EC2 instances
#echo "List EC2 instances"

#aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,Tags[]]' --output table

#Printing S3 Buckets
#echo "list S3 buckets"

#aws s3 ls

#Printing Lambda function
#echo "list lambda functions"

#aws lambda list functions

#Printing IAM roles
#echo "list IAM roles"

#aws iam list-roles --query 'Roles[*].[RoleName, Arn]' --output table
#
########################################################################################################################################################################

#!/bin/bash

echo "Printing AWS resources: EC2 instances, Lambda functions, S3 buckets, IAM roles, and IAM users"

# Printing EC2 instances in table format
echo "----------------------------------"
echo "Listing EC2 Instances:"
echo "----------------------------------"
aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId[]' --output table

# Printing S3 Buckets in table format
echo "----------------------------------"
echo "Listing S3 Buckets:"
echo "----------------------------------"
aws s3api list-buckets --query 'Buckets[*].Name' --output table

# Printing Lambda functions in table format
echo "----------------------------------"
echo "Listing Lambda Functions:"
echo "----------------------------------"
aws lambda list-functions --query 'Functions[*].[FunctionName, Runtime, Handler]' --output table

# Printing IAM users in table format
echo "----------------------------------"
echo "Listing IAM Users:"
echo "----------------------------------"
aws iam list-users --query 'Users[*].[UserName, Arn, CreateDate]' --output table

