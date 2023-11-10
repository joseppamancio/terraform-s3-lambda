variable "region" {
  description = "AWS region"
}

variable "lambda_role_name" {
  description = "Name of the IAM role for Lambda"
}

variable "policy" {
  description = "Policy to attach to the S3 bucket"
  default = "${path.module}/policy-allow-lambda.template"
}