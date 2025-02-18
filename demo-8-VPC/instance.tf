resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.igu-key.key_name
}

output "aws_instance_public_ip" {
  value = aws_instance.example.public_ip
}

output "aws_instance_public_dns" {
  value = aws_instance.example.public_dns
}