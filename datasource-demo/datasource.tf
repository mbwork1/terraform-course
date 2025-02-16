data "terraform_remote_state" "first-steps" {
  backend = "s3"

  config = {
    key            = "first-steps/terraform.state"
    bucket         = "zlion-tfbucket"
    region         = "us-east-2"
  }
}

locals {
  vpc_id = data.terraform_remote_state.first-steps.outputs.vpc_id
}

output "vpc_id" {
  value = local.vpc_id
}