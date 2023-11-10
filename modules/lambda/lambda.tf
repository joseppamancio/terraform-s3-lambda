provider "aws" {
  region = var.region
}

resource "aws_lambda_function" "lambda_function" {
  function_name = var.function_name
  handler      = var.handler
  runtime      = var.runtime
  role         = var.role_arn
  filename     = var.filename
  source_code_hash = filebase64sha256("${var.filename}")
  tags = {
    "Environment" : var.environment
  }
  environment {
    variables = {
      LOG_LEVEL = "${var.log_level}"
    }
  }
  timeout = var.timeout
}