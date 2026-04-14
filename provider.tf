terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"   # ✅ MUST
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
