resource "aws_security_group" "db_instance" {
  description = "security-group--db-instance"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 5432
    protocol    = "tcp"
    to_port     = 5432
  }

  name = "security-group--db-instance"

  tags = {
    Env  = "production"
    Name = "security-group--db-instance"
  }

  vpc_id = aws_vpc.default.id
}
