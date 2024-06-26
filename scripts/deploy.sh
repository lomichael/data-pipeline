#!/bin/bash

# Set variables
BUCKET_NAME="your-bucket-name"
CLUSTER_NAME="your-cluster-name"

# Upload data to cloud storage
aws s3 cp data/sample_data.csv s3://$BUCKET_NAME/data/sample_data.csv

# Submit the Spark job
aws emr create-cluster \
    --name $CLUSTER_NAME \
    --release-label emr-5.32.0 \
    --applications Name=Hadoop Name=Spark \
    --ec2-attributes KeyName=your-key-pair \
    --instance-type m5.xlarge \
    --instance-count 3 \
    --steps Type=Spark,Name="Spark Program",ActionOnFailure=CONTINUE,Args=[--deploy-mode,cluster,--master,yarn,s3://$BUCKET_NAME/scripts/data_processing.py]

echo "Cluster and job submitted successfully."

