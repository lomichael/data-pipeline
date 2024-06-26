# Scalable Data Processing Pipeline

This project demonstrates a scalable data processing pipeline using Hadoop, Spark, and Node.js. The pipeline is designed to handle large datasets and can be deployed on cloud platforms like AWS.

## Features
- Data cleaning, transformation, and aggregation
- Hadoop and Spark integration
- Real-time data visualization with Node.js
- Cloud deployment with AWS EMR
- Monitoring and logging

## Technologies
- Java, Python
- Hadoop, Spark
- Node.js
- SQL
- Cloud infrastructure (AWS)

## Setup
1. Install Hadoop, Spark, and Node.js on your local machine.
2. Set up an AWS account and configure the AWS CLI.

## Running the Project
### Locally
- Java: `javac -cp $(hadoop classpath) -d . java/DataProcessing.java`
- Hadoop: `hadoop jar data-processing.jar DataProcessing data/sample_data.csv output`
- Python: `python spark/data_processing.py`
- Node.js: 
```bash
cd nodejs
npm install
node server.js
```
### On AWS
- Upload your data to S3: `aws s3 cp data/sample_data.csv s3://your-bucket-name/data/sample_data.csv`
- Run the deployment script: `bash scripts/deploy.sh`
