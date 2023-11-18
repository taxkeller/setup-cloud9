output "instance_id" {
  value = aws_cloud9_environment_ec2.this.id
}

output "cloud9_url" {
  value = "https://${var.aws_region}.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.this.id}"
}
