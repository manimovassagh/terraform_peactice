output "s3_bucket_id" {
  description = "S3 bucket id created in LocalStack"
  value       = aws_s3_bucket.demo.id
}
