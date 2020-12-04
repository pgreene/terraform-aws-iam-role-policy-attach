# terraform-aws-iam-role
Terraform Module for AWS IAM Role Policy Attach

## Usage Example

`main.tf #contents`

```bash
locals {
  vpc_id = data.aws_vpc.vpc.id
  region = "eu-west-1"
}

module "aws_iam_role" {
  source = "git::https://github.com/Voyanta/terraform-aws-iam-role"
  region = local.region
  assume_role_policy = file("${path.module}/files/assume-role-policy.json")
}

module "aws_iam_policy" {
  source = "git::https://github.com/Voyanta/terraform-aws-iam-policy"
  region = local.region
  policy_json = file("${path.module}/files/role-policy.json")
}

module "aws_iam_role_policy_attach" {
  source = "git::https://github.com/Voyanta/terraform-aws-iam-role-policy-attach"
  # Notice below it uses the module name you specify above
  role_name = module.aws_iam_role.name # obtained from module outputs
  policy_arn = module.aws_iam_policy.arn # obtained from module outputs
}

```

## Notes

Module used to tie aws-iam-policy & aws-iam-role together
