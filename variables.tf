variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "terraform-s3"
  }
}