resource "aws_key_pair" "this" {
  key_name   = "id_rsa.pub"
  public_key = file("../keys/id_rsa.pub")
}
