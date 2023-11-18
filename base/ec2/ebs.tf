/*
resource "aws_ebs_volume" "this" {
  availability_zone = "ap-southeast-1a"
  size              = 20
  type              = "gp3"

  tags = {
    Name = "${local.name_prefix}-ebs"
  }
}

resource "aws_volume_attachment" "detach" {
  device_name = "/dev/xvdh"
  instance_id = data.aws_instance.this.id
  volume_id   = aws_ebs_volume.this.id
  force_detach = true
}
*/
