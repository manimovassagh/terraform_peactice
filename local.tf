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

resource "local_file" "main" {
  # use path.module to ensure the file is created in the same folder as this Terraform
  # configuration (the module directory), regardless of the runtime working dir
  filename = "${path.module}/mani.txt"
  content  = "terraform is awesome"
}