terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "raulsousadev"
      managed-by = "terraform"
    }
  }
}

resource "aws_s3_bucket" "bucket_s3_state" {
  bucket = var.name_bucket
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket_s3_state.id
  versioning_configuration {
    status = "Enabled"
  }
}