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