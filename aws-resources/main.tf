module "s3" {
  source = "./modules/s3"

  bucket_name = local.bucket_name
  tags        = var.tags
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"
}

locals {
  bucket_name = "${var.base_name}-${var.branch_name}"
}