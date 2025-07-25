output "vpc_id" {
  value       = aws_vpc.this.id
  description = "VPC ID"
}

output "public_subnet_ids" {
  value       = [for s in aws_subnet.public : s.id]
  description = "퍼블릭 서브넷 ID 목록"
}

output "common_sg_id" {
  value       = aws_security_group.common.id
  description = "공통 Security Group ID"
}
