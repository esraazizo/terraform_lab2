resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public_subnet[0].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.public_subnet[1].id
  route_table_id = aws_route_table.private_nat_gateway.id
}
