terraform {
  backend "s3" {
    bucket = "dev-tfstate-iac-book"
    key    = "queue-test/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
