provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "raw_s3_bucket" {
  bucket = var.bucket_name
  tags = {
    "Environment" : var.environment
  }
}

resource "aws_s3_bucket_policy" "raw_s3_bucket" {
  bucket = aws_s3_bucket.raw_s3_bucket.bucket
  policy = templatefile("${var.policy}", { bucket = "${var.bucket_name}" })
}