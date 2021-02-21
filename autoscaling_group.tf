resource "aws_autoscaling_group" "default" {
  desired_capacity     = 1
  health_check_type    = "EC2"
  launch_configuration = aws_launch_configuration.default.name
  max_size             = 2
  min_size             = 1
  name                 = "auto-scaling-group"

  tag {
    key                 = "Env"
    propagate_at_launch = true
    value               = "production"
  }

  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "blog"
  }

  target_group_arns    = [aws_alb_target_group.default.arn]
  termination_policies = ["OldestInstance"]

  vpc_zone_identifier = [
    aws_subnet.public__a.id,
    aws_subnet.public__b.id
  ]
}
