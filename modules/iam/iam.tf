provider "aws" {
  region = var.region
}

resource "aws_iam_role" "lambda_role" {
  name = var.lambda_role_name
  assume_role_policy = file(var.policy)
}