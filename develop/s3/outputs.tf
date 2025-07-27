output "s3_bucket_sast_name" {
  value       = aws_s3_bucket.sast.bucket
  description = "생성된 sast S3 버킷 이름"
}

output "s3_bucket_sast_arn" {
  value       = aws_s3_bucket.sast.arn
  description = "생성된 sast S3 버킷 ARN"
}

output "s3_bucket_dast_name" {
  value       = aws_s3_bucket.dast.bucket
  description = "생성된 dast S3 버킷 이름"
}

output "s3_bucket_dast_arn" {
  value       = aws_s3_bucket.dast.arn
  description = "생성된 dast S3 버킷 ARN"
}
