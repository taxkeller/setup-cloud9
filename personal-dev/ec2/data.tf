/*
data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = var.s3_backend_bucket_name
    key    = "${locals.name_prefix}/network/v1.0.0.tfstate"
    region = var.aws_region
  }
}
*/

data "terraform_remote_state" "network" {
  backend = "local"

  config = {
    path = "../network/terraform.tfstate"
  }
}
