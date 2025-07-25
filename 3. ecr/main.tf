provider "aws" { 
  region = "ap-northeast-2" 
}

resource "aws_ecr_repository" "this" {
  name                 = "${var.name_prefix}-repo"
  image_tag_mutability = "MUTABLE"
  tags                 = merge(var.tags, { Name = "${var.name_prefix}-ecr" })
}
