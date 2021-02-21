resource "aws_subnet" "public__a" {
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true

  tags = {
    Env  = "production"
    Name = "public-us-east-1a-blog"
  }

  vpc_id = aws_vpc.default.id
}

resource "aws_subnet" "public__b" {
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Env  = "production"
    Name = "public-us-east-1b-blog"
  }

  vpc_id = aws_vpc.default.id
}
