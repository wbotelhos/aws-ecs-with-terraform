resource "aws_alb_listener" "default" {
  default_action {
    target_group_arn = aws_alb_target_group.default.arn
    type             = "forward"
  }

  load_balancer_arn = aws_alb.default.arn
  port              = 80
  protocol          = "HTTP"
}
