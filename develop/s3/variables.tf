variable "sast_s3_bucket_name" {
  type        = string
  description = "생성할 sast S3 버킷 이름"
}

variable "dast_s3_bucket_name" {
  type        = string
  description = "생성할 dast S3 버킷 이름"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Project     = "cloudfence"
  }
}

