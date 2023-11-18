resource "aws_network_interface_sg_attachment" "sg_vpc" {
  security_group_id    = data.terraform_remote_state.network.outputs.security_group_for_vpc
  network_interface_id = data.aws_instance.this.network_interface_id
}

resource "aws_network_interface_sg_attachment" "sg_cloud9" {
  security_group_id    = data.terraform_remote_state.network.outputs.security_group_for_cloud9
  network_interface_id = data.aws_instance.this.network_interface_id
}

/*
resource "aws_network_interface_sg_attachment" "sg_http" {
  security_group_id    = data.terraform_remote_state.network.outputs.security_group_for_http
  network_interface_id = data.aws_instance.this.network_interface_id
}
*/
