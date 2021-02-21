resource "aws_launch_configuration" "default" {
  associate_public_ip_address = true
  iam_instance_profile        = "arn:aws:iam::${data.aws_ssm_parameter.container_definitions__account_id.value}:instance-profile/ecsInstanceProfile"
  image_id                    = data.aws_ami.default.id
  instance_type               = "t3.micro"
  key_name                    = "blog"

  lifecycle {
    create_before_destroy = true
  }

  name_prefix = "lauch-configuration-"

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
  }

  security_groups = [aws_security_group.ec2.id]
  user_data       = file("user_data.sh")
}
