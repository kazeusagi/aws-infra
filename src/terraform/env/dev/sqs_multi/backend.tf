terraform {
  backend "s3" {
    bucket = "dev-tfstate-iac-book"
    key    = "sqs-multi-regions/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
