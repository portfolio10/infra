output "s3_bucket_id" {
  value       = aws_s3_bucket.tfstate.id
  description = "Terraform 상태 저장용 S3 버킷 이름"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.lock_table.name
  description = "Terraform 상태 잠금용 DynamoDB 테이블 이름"
}
