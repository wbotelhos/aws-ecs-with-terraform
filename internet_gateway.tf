resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id

  tags = {
    Env  = "production"
    Name = "internet-gateway"
  }
}
