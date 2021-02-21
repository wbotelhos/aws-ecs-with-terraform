resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Env  = "production"
    Name = "vpc"
  }
}
