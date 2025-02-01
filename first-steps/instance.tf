resource "aws_instance" "tdw-ubuntu-inst" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type.example2

  tags = {
    Name = "TDW-Ubuntu-Inst"
  }
}