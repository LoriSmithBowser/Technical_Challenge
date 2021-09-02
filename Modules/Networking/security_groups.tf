module "Subnet1_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "Subnet1_sg"
  description = "Security group for Subnet1"
  vpc_id      = "vpc-12345678 - INSERT the correct VPC once compiled"

  ingress_cidr_blocks = ["10.1.0.0/24"]
}
module "Subnet2_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "Subnet2_sg"
  description = "Security group for Subnet2"
  vpc_id      = "vpc-12345678 - INSERT the correct VPC once compiled"

  ingress_cidr_blocks = ["10.1.1.0/24"]
}
module "Subnet3_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "Subnet3_sg"
  description = "Security group for Subnet3"
  vpc_id      = "vpc-12345678 - INSERT the correct VPC once compiled"

  ingress_cidr_blocks = ["10.1.2.0/24"]
}
module "Subnet1_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "Subnet4_sg"
  description = "Security group for Subnet4"
  vpc_id      = "vpc-12345678 - INSERT the correct VPC once compiled"

  ingress_cidr_blocks = ["10.1.3.0/24"]
}


#https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest