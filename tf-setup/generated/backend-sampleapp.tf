terraform {
  required_version = "> 1.4.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #  Lock version to avoid unexpected problems
      version = "4.65.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.17.0"
    }
  }
  backend "s3" {
    bucket         = "tf-state-workshop-7dda382e765ce997"
    key            = "terraform/terraform_locks_sampleapp.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_locks_sampleapp"
    encrypt        = "true"
  }
}
provider "aws" {
  region                   = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = var.profile
}
