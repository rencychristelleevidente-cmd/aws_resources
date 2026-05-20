locals {
  clean_repo = replace(lower(var.repo_name), "_", "-")
  prefix     = "${local.clean_repo}-${var.branch_name}"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = local.prefix
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "${local.prefix}-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
