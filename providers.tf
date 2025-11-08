terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      # pick a stable minor version that matches your Terraform version
      version = "~> 2.3"
    }
  }
}

provider "local" {}
