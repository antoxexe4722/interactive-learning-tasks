resource "aws_iam_group" "developers" {
  name = "sysusers"
  tags = {
    tag-key = "Team=DevOps"
  }
}