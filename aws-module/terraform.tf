terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
  required_version = ">= 1.5.0"

  cloud {
    organization = "Personal2024"
    workspaces {
      name = "practical-terraform_aws-module"
    }
  }
}
