resource "aws_db_subnet_group" "default" {
  name = "db-subnet-group"

  subnet_ids = [
    aws_subnet.private__a.id,
    aws_subnet.private__b.id
  ]

  tags = {
    Env  = "production"
    Name = "db-subnet-group"
  }
}
