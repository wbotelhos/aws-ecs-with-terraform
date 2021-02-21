resource "aws_db_instance" "default" {
  allocated_storage         = 20
  backup_window             = "03:00-04:00"
  ca_cert_identifier        = "rds-ca-2019"
  db_subnet_group_name      = "db-subnet-group"
  engine_version            = "12.5"
  engine                    = "postgres"
  final_snapshot_identifier = "final-snapshot"
  identifier                = "production"
  instance_class            = "db.t2.micro"
  maintenance_window        = "sun:08:00-sun:09:00"
  name                      = "blog_production"
  parameter_group_name      = "default.postgres12"
  password                  = data.aws_ssm_parameter.db_instance__password.value
  username                  = "postgres"
}
