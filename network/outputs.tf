output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_a_subnet_id" {
  value = aws_subnet.public_a.id
}

output "public_c_subnet_id" {
  value = aws_subnet.public_c.id
}