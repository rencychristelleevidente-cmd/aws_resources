module "s3" {
  source = "./modules/s3"

  bucket_name = "${local.bucket_name}-bucket"
  tags        = var.tags
}

module "vpc" {
  source = "./modules/vpc"
  base_name    = var.base_name
  branch_name  = var.branch_name
  subnet_prefix = local.subnet_prefix
}

module "ec2" {
  source = "./modules/ec2"

  instance_name = "${local.app_name}-ec2"
  instance_type = var.instance_type

  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.subnet_id
}

locals {
  bucket_name = "${var.base_name}-${var.branch_name}"
  app_name = "${var.base_name}-${var.branch_name}"
  subnet_prefix = "${var.base_name}-${var.branch_name}"
  lock_table_name = "${local.app_name}-lock"
}