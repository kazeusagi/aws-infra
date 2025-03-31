terraform {
  required_version = "1.11.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
  }
  backend "s3" {
    bucket = "dev-tfstate-iac-book"
    key    = "case1/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeasst-1"
  default_tags {
    tags = {
      Terraform = "true"
      STAGE     = "dev"
      MODULE    = "case1"
    }
  }
}

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
  default_tags {
    tags = {
      Terraform = "true"
      STAGE     = "dev"
      MODULE    = "case1"
    }
  }
}
