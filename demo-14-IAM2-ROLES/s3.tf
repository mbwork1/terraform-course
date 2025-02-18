resource "aws_s3_bucket" "b" {
  bucket = "mybucket-zlion2016"

  tags = {
    Name = "mybucket-zlion2016"
  }
}

