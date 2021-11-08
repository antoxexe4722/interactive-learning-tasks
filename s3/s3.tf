locals {
  common_tags = {
    Team       = "DevOps"
    Enviroment = "Dev"
  }
}

resource "aws_s3_bucket" "hw_bucket" {
  bucket_prefix = "aws-s3-devops-task-antonprytkov"
  acl           = "private"

  versioning {
    enabled = true
  }
  tags = local.common_tags
}


