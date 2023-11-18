variable "user_data_file_name" {
  type    = string
  default = "default.sh.tpl"
}

resource "aws_instance" "this" {
  ami                  = data.aws_ami.this.id
  instance_type        = "t3.small"
  key_name             = aws_key_pair.this.key_name
  iam_instance_profile = aws_iam_instance_profile.this.name

  subnet_id = data.terraform_remote_state.network.outputs.public_a_subnet_id
  vpc_security_group_ids = [
    data.terraform_remote_state.network.outputs.security_group_for_vpc,
    data.terraform_remote_state.network.outputs.security_group_for_cloud9,
    data.terraform_remote_state.network.outputs.security_group_for_all,
  ]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name = "${local.name_prefix}-instance"
  }

  user_data = base64encode(
    file("./${var.user_data_file_name}")
  )
}
