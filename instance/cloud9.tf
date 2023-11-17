resource "aws_cloud9_environment_ec2" "this" {
  name                        = "${local.name_prefix}-cloud9"
  instance_type               = "t2.micro"
  connection_type             = "CONNECT_SSM"
  image_id                    = "amazonlinux-2-x86_64"
  subnet_id                   = data.terraform_remote_state.network.outputs.public_a_subnet_id
  automatic_stop_time_minutes = 30
  owner_arn                   = var.cloud9_owner_arn

  #tags = {
  #  Name = "${local.name_prefix}-cloud9"
  #}
}
