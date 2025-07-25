variable "name_prefix" {
  type        = string
  description = "리소스 이름 접두사"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR 블록"
}

variable "public_subnets_cidr" {
  type        = list(string)
  description = "퍼블릭 서브넷 CIDR 목록"
}

variable "azs" {
  type        = list(string)
  description = "서브넷별 AZ 목록"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "공통 태그"
}

# ─── 공통 SG를 위한 변수 ───
variable "ssh_port" {
  type        = number
  default     = 22
  description = "허용할 SSH 포트"
}

variable "app_ports" {
  type        = list(number)
  default     = [8080, 9000, 8081, 8090]
  description = "허용할 애플리케이션 포트 목록"
}
