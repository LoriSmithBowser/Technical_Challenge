#red hat linux
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance_RHEL8"

  ami                    = "data.aws_ami.RHEL8.id"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-subnet2"]
  subnet_id              = "subnet-2"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}