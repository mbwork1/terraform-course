terraform {
  backend "s3" {
    bucket = "terraform-state-20250301"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}