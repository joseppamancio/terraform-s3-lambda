variable "region" {
  description = "AWS region"
}

variable "function_name" {
  description = "Name of the Lambda Function"
  type        = string
  default     = "LambdaExample"
}

variable "handler" {
  description = "Handler for Lambda function"
  type        = string
  default     = "main.lambda_handler"
}

variable "runtime" {
  description = "Runtime for the Lambda function"
  type        = string
  default     = "python3.8"
}

variable "filename" {
    description = "Zipped file containing Lambda function"
  type        = string
  default     = "../../aws_lambda/aws_lambda.zip"
}

variable "role_arn" {
  description = "ARN of the IAM role for the Lambda function"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Defines the environment of the infrastructure"
  type        = string
}

variable "log_level" {
  description = "Defines the log level of the Lambda function"
  type        = string
  default     = "INFO"
}

variable "timeout" {
  description = "Timeout for Lambda Function Execution in seconds"
  type        = number
  default     = 60
}