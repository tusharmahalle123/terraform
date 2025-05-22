
provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source        = "../../modules/ec2-instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  name          = var.name
  environment   = var.environment
}

output "prod_instance_id" {
  value = module.ec2.instance_id
}
