resource "aws_subnet" "public_subnet" {
  count                   = 2 
  vpc_id                  = aws_vpc.esraa_vpc.id
  cidr_block              = var.subnet-cidr-block[count.index]
  map_public_ip_on_launch = var.map[count.index]

  tags = {
    Name   = var.public-subnet-name[count.index]
    
  }
}
