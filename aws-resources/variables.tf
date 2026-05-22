variable "branch_name" {
  type = string
}

variable "base_name" {
  type    = string
  default = "aws-resources"
}

variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "bucket_name" {
  type = string
}

variable "lock_table_name" {
  type = string
}