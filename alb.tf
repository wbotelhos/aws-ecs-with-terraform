resource "aws_alb" "default" {
  name            = "alb"
  security_groups = [aws_security_group.alb.id]

  subnets = [
    aws_subnet.public__a.id,
    aws_subnet.public__b.id
  ]
}
