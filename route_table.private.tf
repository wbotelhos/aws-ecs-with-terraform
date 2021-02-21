resource "aws_route_table" "private" {
  tags = {
    Env  = "production"
    Name = "route-table-private"
  }

  vpc_id = aws_vpc.default.id
}
