terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.62.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "myroboshop"
    dynamodb_table = "roboshoptable"
    key    = "foreach"
    region = "us-east-1"
  }
}