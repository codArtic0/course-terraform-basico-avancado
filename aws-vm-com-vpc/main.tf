terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.62.0"
    }
  }

  backend "s3" {
    bucket = "s3-remote-state-bucket-raul"
    key = "aws-vm/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project = "testeAWS"
      owner = "raulsousadev"
      managed-by = "Terraform"
    }
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "s3-remote-state-bucket-raul"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}