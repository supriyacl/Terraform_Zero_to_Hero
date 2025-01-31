terraform {
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
  region = "us-east-1"
}

# Configure the backend with S3 and DynamoDB
terraform {
  backend "s3" {
    bucket         = "tf-state-fil-storage-13125"                             # Hardcoded bucket name
    key            = "modules/tfstate/terraform.tfstate"                      # Path to the state file in the bucket
    region         = "us-east-1"                                              # Region for S3 and DynamoDB
    dynamodb_table = "terraform-state-lock"                                   # Hardcoded DynamoDB table name
    encrypt        = true                                                     # Enable encryption for the state file
  }
}
