variable "function_name" {
  type        = string
  description = "SAST용 Lambda 이름"
}

variable "iam_role_arn" {
  type        = string
  description = "IAM 역할 ARN"
}

variable "slack_webhook_url" {
  type        = string
  description = "Slack Webhook URL"
  default     = "https://hooks.slack.com/services/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"
}

variable "s3_bucket_sast_name" {
  type        = string
  description = "S3 버킷 이름"
}

variable "sast_s3_filter_prefix" {
  type        = string
  description = "S3 키 접두어"
}

variable "s3_bucket_sast_arn" {
  type        = string
  description = "S3 버킷 ARN"
}