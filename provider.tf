terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  access_key = "AKIA4MTWNOHGZK2WHXPC"
  secret_key = "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"
}
