resource "aws_key_pair" "igu-key" {
  key_name   = "igu-key"
  public_key = file(var.igu-key-public)
}

