variable "region" {
  description = "AWS region"
}

variable "bucket_name" {
  description = "AWS S3 bucket name"
  type        = string
  default     = "raw_s3_bucket"
}

variable "environment" {
  description = "Defines the environment of the infrastructure"
  type        = string
}

variable "policy" {
  description = "Policy to attach to the S3 bucket"
  default = "${path.module}/policy-allow-s3-bucket.template"
}