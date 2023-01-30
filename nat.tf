resource "aws_eip" "nat_eip" {
  vpc        = true

}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet[0].id

  tags = {
    Name        = var.nt
  }
  depends_on = [aws_internet_gateway.igw]

}