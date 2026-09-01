terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.62.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
    owner = "raulsousa"
    managed-by = "terraform"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}