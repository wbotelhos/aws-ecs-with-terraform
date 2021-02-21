resource "aws_route_table_association" "private__a" {
  route_table_id = aws_route_table.private.id
  subnet_id      = aws_subnet.private__a.id
}

resource "aws_route_table_association" "private__b" {
  route_table_id = aws_route_table.private.id
  subnet_id      = aws_subnet.private__b.id
}
