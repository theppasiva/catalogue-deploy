terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }

  backend "s3" {
    bucket = "shivaram-practice-state-dev"
    key    = "catalogue"
    region = "us-east-1"
    dynamodb_table = "shivaram-practice-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}