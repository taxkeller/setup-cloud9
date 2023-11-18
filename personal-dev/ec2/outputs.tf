output "ec2_instance_id" {
  value = aws_instance.this.id
}

output "ec2_instance_public_dns" {
  value = aws_instance.this.public_dns
}

output "cloud9_node_path" {
  value = "/home/ec2-user/.nvm/versions/node/v20.9.0/bin/node"
}
