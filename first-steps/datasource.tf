data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  owners = ["099720109477"] # Canonical, AmazonID
}


data "aws_acm_certificate" "issued_cert" {
  domain       = "*.kubeigu.plainandplane.com"
  types     = ["AMAZON_ISSUED"]
  most_recent = true
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}