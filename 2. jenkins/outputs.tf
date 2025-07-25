output "instance_id" {
  value       = aws_instance.this.id
  description = "생성된 Jenkins EC2 ID"
}

output "public_ip" {
  value       = aws_instance.this.public_ip
  description = "Jenkins EC2 Public IP"
}
