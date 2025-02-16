output "public_ip" {
  value = aws_instance.igu-ubuntu-inst.public_ip
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "region" {
  value = data.aws_region.current.name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}