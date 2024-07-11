terraform {
  required_version = "> 1.4.4"
  required_providers {
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
