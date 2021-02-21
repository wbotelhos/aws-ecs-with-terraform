resource "aws_key_pair" "default" {
  key_name   = "blog"
  public_key = data.aws_ssm_parameter.key_pair__public_key.value
}
