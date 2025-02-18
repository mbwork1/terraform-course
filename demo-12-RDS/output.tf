output "aws_instance_public_ip" {
  value = aws_instance.example.public_ip
}

output "aws_instance_public_dns" {
  value = aws_instance.example.public_dns
}

output "rds" {
  value = aws_db_instance.mariadb.endpoint
}