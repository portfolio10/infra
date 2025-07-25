variable "aws_region" {
  type    = string
  default = "ap-northeast-2"
}

variable "instance_profile_name" {
  type        = string
  default     = "ec2-shard-profile"
  description = "생성할 EC2 인스턴스 프로파일 이름"
}

variable "role_name" {
  type        = string
  default     = "ec2-shard-role"
  description = "생성할 IAM 역할 이름"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Project     = "cloudfence"
  }
}