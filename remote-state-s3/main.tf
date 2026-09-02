terraform{
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=6.62.0"
    }
  }
  backend "s3" {
    bucket = "s3-remote-state-bucket-raul"
    key = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner = "raulsousadev"
      managed-by = "terraform"
    }
  }
}