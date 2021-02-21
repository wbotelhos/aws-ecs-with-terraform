resource "aws_alb_target_group" "default" {
  health_check {
    path = "/"
  }

  name     = "alb-target-group"
  port     = 80
  protocol = "HTTP"

  stickiness {
    type = "lb_cookie"
  }

  vpc_id = aws_vpc.default.id
}
