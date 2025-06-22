# Cloud Data Pipeline PoC

This proof-of-concept demonstrates a simple AWS-based data pipeline that automates the ingestion of CSV files into a DynamoDB table using S3 and Lambda.

## 📦 Architecture Overview

1. A CSV file is uploaded to an S3 bucket.
2. This triggers a Lambda function using S3 event notifications.
3. The Lambda function parses the file and inserts the records into DynamoDB.

## 🚀 Technologies Used

- AWS S3
- AWS Lambda (Python 3.9)
- AWS DynamoDB
- Terraform for IaC (Infrastructure as Code)

## ⚙️ Trigger Points

- S3 `ObjectCreated` event triggers the Lambda
- Lambda processes CSV rows and writes to DynamoDB

## 📈 Monitoring & Logging

- CloudWatch Logs integrated with Lambda
- Basic error handling and row-level validation included
- Terraform state stored locally for PoC (can be updated for remote backend)

## 🛠️ Getting Started

1. Deploy infrastructure with Terraform:
```bash
cd terraform
terraform init
terraform apply
```

2. Upload `sample_data.csv` to the S3 bucket created by Terraform

3. Monitor Lambda execution and DynamoDB for processed records

## 👤 Author

Created by Shatrugna Vad – Enterprise Architect  
Cloud | Data | Automation | AWS | Platform Strategy  
[LinkedIn](https://www.linkedin.com/in/your-link)

## 📜 License

This content is provided for educational and demonstration purposes under the MIT License.
