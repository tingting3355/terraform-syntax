terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

# 개발환경
module "default_custome_vpc" {
  source = "./custom_vpc"
}

# 운영환경
module "prd_custome_vpc" {
  source = "./custom_vpc"
}
