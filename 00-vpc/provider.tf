terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"  
      version = "~> 6.0"

    }
  }


#remote state storage location

  backend "s3" {
    bucket       = "bmkrishtech-vpc-state"
    key          = "bmkrishtech-roboshop-dev"
    region       = "us-east-1"
    encrypt      = "true"
    use_lockfile = "true"  # Enables native S3 state locking (Terraform 1.10+)
  }
}

#configure the aws provider

provider "aws" {
    region = "us-east-1"
  
}

