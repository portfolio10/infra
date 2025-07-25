output "instance_id" {
  value       = aws_instance.this.id
  description = "생성된 SAST EC2 ID"
}

output "public_ip" {
  value       = aws_instance.this.public_ip
  description = "SAST EC2 Public IP"
}
