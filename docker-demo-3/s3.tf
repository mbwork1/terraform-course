resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-20250301"

  tags = {
    Name = "Terraform state"
  }
}

