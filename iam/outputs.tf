output "role_name" {
  value       = aws_iam_role.ec2_shard.name
  description = "생성된 IAM 역할 이름"
}

output "instance_profile_name" {
  value       = aws_iam_instance_profile.ec2_shard_profile.name
  description = "생성된 IAM 인스턴스 프로파일 이름"
}