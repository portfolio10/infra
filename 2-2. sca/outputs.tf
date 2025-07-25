output "instance_id" {
  value       = aws_instance.this.id
  description = "생성된 SCA EC2 ID"
}

output "public_ip" {
  value       = aws_instance.this.public_ip
  description = "SCA EC2 Public IP"
}
