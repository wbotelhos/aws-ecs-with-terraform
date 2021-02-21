resource "aws_ecs_cluster" "production" {
  lifecycle {
    create_before_destroy = true
  }

  name = "production"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Env  = "production"
    Name = "production"
  }
}
