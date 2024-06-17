variable "region" {
  description = "region where status check runs"
  default = ""
}

variable "role_name" {
  default = ""
}

variable "policy_arn" {
  //default = "${file("${path.module}/files/role-policy.json")}"
  default = ""
}