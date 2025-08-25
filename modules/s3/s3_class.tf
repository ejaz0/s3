resource "aws_s3_bucket" "elvis_bucket_v1" {
  bucket ="${var.env}-elvis-bucket"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "elvis_bucket_v1" {
  bucket = aws_s3_bucket.elvis_bucket_v1.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}