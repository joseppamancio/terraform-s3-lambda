output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.raw_s3_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = aws_s3_bucket.raw_s3_bucket.arn
}