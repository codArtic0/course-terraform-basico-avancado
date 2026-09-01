resource "aws_s3_bucket" "bucket_s3" {
  bucket = var.name_bucket
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket_s3.id
  versioning_configuration {
    status = "Enabled"
  }
}