resource "aws_s3_bucket" "bucket" {
  bucket = "my-bucket"
  acl    = "private"

  lifecycle_rule {
    id      = "log"
    enabled = true

    prefix = "log/"

    tags = {
      rule      = "log"
      autoclean = "true"
    }

#    transition {
#      days          = 90
#      storage_class = "STANDARD_IA" # or "ONEZONE_IA"
#    }
#
#    transition {
#      days          = 90
#      storage_class = "GLACIER"
#    }

    expiration {
      days = 90
    }
  }

  lifecycle_rule {
     id      = "images"
     prefix  = "images/"
     enabled = true

    transition {
      days          = 90
      storage_class = "GLACIER"
    }

#    expiration {
#      days = 90
#    }
  }
}
#resource "aws_s3_bucket" "versioning_bucket" {
#  bucket = "my-versioning-bucket"
#  acl    = "private"
#
#  versioning {
#    enabled = true
#  }
# 
#   lifecycle_rule {
#     prefix  = "config/"
#     enabled = true
# 
#    noncurrent_version_transition {
#      days          = 30
#      storage_class = "STANDARD_IA"
#    }
# 
#     noncurrent_version_transition {
#       days          = 90
#       storage_class = "GLACIER"
#     }
# 
#    noncurrent_version_expiration {
#       days = 90
#     }
#  }
#}
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket