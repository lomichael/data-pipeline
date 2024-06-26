# data-pipeline

This project demonstrates a scalable data processing pipeline using Hadoop and Spark. The pipeline is designed to handle large datasets and can be deployed on cloud platforms like AWS.

## Features
- Data cleaning, transformation, and aggregation
- Hadoop and Spark integration
- Cloud deployment with AWS EMR
- Monitoring and logging

## Technologies
- Java, Python
- Hadoop, Spark
- SQL
- Cloud infrastructure (AWS)

## Setup
1. Install Hadoop and Spark on your local machine.
2. Set up an AWS account and configure the AWS CLI.

## Running the Project
### Locally
- Java: `javac -cp $(hadoop classpath) -d . src/main/java/DataProcessing.java`
- Hadoop: `hadoop jar data-processing.jar DataProcessing data/sample_data.csv output`
- Python: `python src/main/python/data_processing.py`

### On AWS
- Upload your data to S3: `aws s3 cp data/sample_data.csv s3://your-bucket-name/data/sample_data.csv`
- Run the deployment script: `bash scripts/deploy.sh`
