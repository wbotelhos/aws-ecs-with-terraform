data "aws_ecs_task_definition" "default" {
  task_definition = aws_ecs_task_definition.default.family
}
