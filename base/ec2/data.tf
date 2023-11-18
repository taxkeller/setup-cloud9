data "terraform_remote_state" "cloud9" {
  backend = "local"

  config = {
    path = "../cloud9/terraform.tfstate"
  }
}

data "terraform_remote_state" "network" {
  backend = "local"

  config = {
    path = "../network/terraform.tfstate"
  }
}


data "aws_instance" "this" {
  filter {
    name   = "tag:aws:cloud9:environment"
    values = ["${data.terraform_remote_state.cloud9.outputs.instance_id}"]
  }
}
