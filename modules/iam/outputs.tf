output "lambda_role_arn" {
  description = "ARN of the created IAM role for Lambda"
  value       = aws_iam_role.lambda_role.arn
}