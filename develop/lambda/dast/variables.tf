variable "function_name" {
  type        = string
  description = "DAST용 Lambda 함수 이름"
}

variable "iam_role_arn" {
  type        = string
  description = "Lambda에 연결할 IAM 역할 ARN"
}

variable "slack_webhook_url" {
  type        = string
  description = "DAST용 Slack Webhook URL"
  default     = "https://hooks.slack.com/services/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"
}

variable "s3_bucket_dast_name" {
  type        = string
  description = "DAST 결과가 저장될 S3 버킷 이름"
}

variable "dast_s3_filter_prefix" {
  type        = string
  description = "DAST 결과가 저장될 S3 경로 prefix"
}

variable "s3_bucket_dast_arn" {
  type        = string
  description = "DAST 결과 S3의 ARN"
}