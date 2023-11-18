provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region     = var.aws_region

  default_tags {
    tags = {
      "System" = "setup-personal-dev"
      "Env"    = "dev"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }

  required_version = "1.6.3"
}
