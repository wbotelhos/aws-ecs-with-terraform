# AWS ECS With Terraform

A complete guide of how to setup AWS ECS With Terraform from the scratch.

Read the article at [AWS ECS With Terraform](https://www.wbotelhos.com/aws-ecs-with-terraform).

## Setup

Initiate the Terraform workspace:

```sh
terraform init
terraform workspace new production
```

Create the ECR repository:

```sh
terraform apply -target=aws_ecr_repository.default
```

Generate the app image and upload it:

```sh
cd app

ACCOUNT_ID=... AWS_PROFILE=blog REGION=us-east-1 REPOSITORY=blog TAG=v0.1.0 ../release.sh
```

Create the SSM Parameter variables:

```sh
resource "aws_ssm_parameter" "container_definitions__account_id" {
  name      = "/terraform/${terraform.workspace}/CONTAINER_DEFINITIONS__ACCOUNT_ID"
  overwrite = true
  type      = "String"
  value     = "..."
}

resource "aws_ssm_parameter" "db_instance__password" {
  name      = "/terraform/${terraform.workspace}/DB_INSTANCE__PASSWORD"
  overwrite = true
  type      = "SecureString"
  value     = "..."
}

resource "aws_ssm_parameter" "key_pair__public_key" {
  name      = "/terraform/${terraform.workspace}/KEY_PAIR__PUBLIC_KEY"
  overwrite = true
  type      = "SecureString"
  value     = "..."
}
```

Execute Terraform:

```sh
terraform apply -var-file="stages/production.tfvars"
```
