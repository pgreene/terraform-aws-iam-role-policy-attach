resource "aws_iam_role_policy_attachment" "general" {
  //role = aws_iam_role.iam_for_lambda.name
  //policy_arn = aws_iam_policy.lambda_policy.arn
  role = var.role_name
  policy_arn = var.policy_arn
  //count = var.policy_yesno
}

