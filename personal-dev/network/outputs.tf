output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_a_subnet_id" {
  value = aws_subnet.public_a.id
}

output "public_c_subnet_id" {
  value = aws_subnet.public_c.id
}

output "security_group_for_vpc" {
  value = aws_security_group.vpc.id
}

output "security_group_for_cloud9" {
  value = aws_security_group.cloud9.id
}

output "security_group_for_all" {
  value = aws_security_group.all.id
}
