provider "aws" {
  region = var.region
}

module "iam" {
  source                      = "./modules/iam"
  lambda_role_name            = var.lambda_role_name
  region                      = var.region
  policy                      = "${path.module}/iam/policy-allow-lambda.template"
}

module "s3_storage" {
  source                      = "./modules/s3"
  region                      = var.region
  bucket_name                 = "${var.bucket_name}-${var.environment}"
  environment                 = var.environment
  policy                      = "${path.module}/s3/policy-allow-s3-bucket.template"
}

module "lambda" {
  source                      = "../modules/lambda"
  environment                 = var.environment
  function_name               = var.lambda_function_name
  handler                     = var.lambda_function_handler
  runtime                     = var.lambda_function_runtime
  role_arn                    = modules.lambda_role.lambda_role_arn
  filename                    = var.lambda_function_filename
  depends_on                  = [module.iam]
  execution_timeout           = var.execution_timeout
}