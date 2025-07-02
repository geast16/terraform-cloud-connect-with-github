terraform {
  cloud {

    organization = "kingeast-94"

    workspaces {
      name = "terraform-vcs"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
