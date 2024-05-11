terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "balkriishna-terraform"
    key    = "workspaces"
    region = "us-east-1"
    dynamodb_table = "balkriishna-terraform"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}