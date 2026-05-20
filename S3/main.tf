resource "aws_s3_bucket" "demo" {
  bucket = lower("${var.base_name}-${var.bucket_name}")

  tags = var.tags
}