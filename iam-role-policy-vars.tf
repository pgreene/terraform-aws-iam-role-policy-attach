variable "region" {
  description = "region where status check runs"
  default = "us-east-1"
}

variable "role_name" {
  default = ""
}

variable "policy_arn" {
  //default = "${file("${path.module}/files/role-policy.json")}"
  default = ""
}