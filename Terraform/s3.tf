resource "aws_s3_bucket" "s3" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }
}
