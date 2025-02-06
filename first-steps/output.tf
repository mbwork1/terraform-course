output "public_ip" {
  value = aws_instance.igu-ubuntu-inst.public_ip
}

output "public_subnets" {
  value = module.vpc.public_subnets
}
