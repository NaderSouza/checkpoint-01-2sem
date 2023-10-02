# PROVIDER
terraform {

  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }


  backend "s3" {
    bucket         = "terraform-state-check-nadin"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-check-nadin"
    

  }
}
provider "aws" {
  region                   = "us-east-1"

}
