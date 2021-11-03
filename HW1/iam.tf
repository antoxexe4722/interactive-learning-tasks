resource "aws_iam_user" "lb" {
  name = "bob"
  path = "/system/"

  tags = {
    tag-key = "Team=DevOps"
  }
}