variable "aws_region" {
  type    = string
  default = "ap-northeast-2"
}

variable "bucket_name" {
  type        = string
  default     = "your-tfstate-bucket"
  description = "Terraform 상태 파일 저장용 S3 버킷 이름"
}

variable "dynamodb_table_name" {
  type        = string
  default     = "terraform-locks"
  description = "Terraform 상태 잠금을 위한 DynamoDB 테이블 이름"
}
