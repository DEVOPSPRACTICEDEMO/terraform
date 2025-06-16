terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-skptech"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "remote-state-DAWS84s"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
}