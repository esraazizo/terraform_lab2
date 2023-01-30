resource "aws_vpc" "esraa_vpc" {
  cidr_block = var.vpc-cidr-block 
 
  tags = {
    Name   = var.vpc-name
    
  }
}