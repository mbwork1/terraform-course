terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "first-steps/terraform.state"
    bucket         = "zlion-tfbucket"
    region         = "us-east-2"
    dynamodb_table = "zlion-state-lock-table"
  }
}