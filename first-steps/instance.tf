resource "aws_instance" "igu-ubuntu-inst" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type.example2

  subnet_id = module.vpc.public_subnets[0]

  key_name = aws_key_pair.igu-key.key_name

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  user_data = file("${path.module}/jenkins.sh")

  tags = {
    Name = "IGU-Ubuntu-Inst"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic and all outbound traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["72.66.61.115/32"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "Name" = "allow_ssh"
  }
}

resource "aws_key_pair" "igu-key" {
  key_name   = "igu-key"
  public_key = file("~/Downloads/igu-key.pub")
}

resource "aws_route53_record" "dnsrecord" {
  zone_id = var.zone_id
  name    = "jenkins.test.kubeigu.plainandplane.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.igu-ubuntu-inst.public_ip]
}