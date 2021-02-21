resource "aws_ecs_task_definition" "default" {
  family                   = "blog"
  container_definitions    = data.template_file.container_definitions.rendered
  memory                   = 500
  network_mode             = "host"
  requires_compatibilities = ["EC2"]
}
