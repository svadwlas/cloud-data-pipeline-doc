provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "data_bucket" {
  bucket = "cloud-data-pipeline-poc-bucket"
  force_destroy = true
}

resource "aws_dynamodb_table" "data_table" {
  name           = "CloudDataPipelineTable"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
