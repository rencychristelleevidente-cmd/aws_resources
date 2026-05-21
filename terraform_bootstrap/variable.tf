variable "bucket_name" {
  description = "Terraform backend S3 bucket name"
  type        = string
}

variable "lock_table_name" {
  description = "Terraform DynamoDB lock table name"
  type        = string
}