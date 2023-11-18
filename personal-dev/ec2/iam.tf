resource "aws_iam_role" "this" {
  name = "personal-dev-ec2-role"
  path = "/"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "Service" : ["ec2.amazonaws.com"]
        },
        "Effect" : "Allow",
        "Sid" : ""
      }
    ]
  })
}

resource "aws_iam_instance_profile" "this" {
  name = "personal-dev-ec2-instance-profile"
  role = aws_iam_role.this.name
}
