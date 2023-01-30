resource "aws_route_table" "public" {
  vpc_id =  aws_vpc.esraa_vpc.id

  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
  
  tags = {
    Name = var.route-name
  }
}

# Route for NAT
resource "aws_route_table" "private_nat_gateway" {
  vpc_id =  aws_vpc.esraa_vpc.id

  route {
     cidr_block = var.route_cidr_block 
    nat_gateway_id = aws_nat_gateway.nat.id
  }
  
  tags = {
    Name = var.private-route
  }
}


