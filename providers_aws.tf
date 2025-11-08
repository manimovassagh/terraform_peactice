terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # Use a 4.x provider compatible with many Terraform versions; adjust if needed
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}
