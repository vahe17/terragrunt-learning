output "arn" {
  value       = aws_s3_bucket.test.arn
  sensitive   = true
  description = "Full ARN of the repository"
}