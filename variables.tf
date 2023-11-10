//Environment
variable "environment" {
  description = "Defines the environment of the infrastructure"
  type        = string
}

//Region
variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

//IAM
variable "lambda_role_name" {
  description = "Name of the role chosen for Lambda"
  type        = string
  default     = "LambdaRole"
}



// S3
variable "bucket_name" {
  description = "AWS S3 bucket name"
  type        = string
  default     = "raw-bucket-example"
}


// Lambda
variable "lambda_function_name" {
  description = "Name of the Lambda Function"
  type        = string
  default     = "example_lambda_function"
}

variable "lambda_function_handler" {
  description = "Handler for Lambda function"
  type        = string
  default     = "main.lambda_handler"
}

variable "lambda_function_runtime" {
  description = "Runtime for Lambda function"
  type        = string
  default     = "python3.7"
}

variable "lambda_function_filename" {
  description = "Zipped file containing Lambda function"
  type        = string
  default     = "../../aws_lambda/aws_lambda.zip"
}

variable "execution_timeout" {
  description = "Timeout for Lambda Function Execution in seconds"
  type        = number
  default     = 60
}