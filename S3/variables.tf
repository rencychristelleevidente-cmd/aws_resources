variable "bucket_name" {
  type    = string
  default = "testing-s3-bucket"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "terraform-s3"
  }
}

variable "base_name" {
  type    = string
  default = "my-app"
}