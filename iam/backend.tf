terraform {
  backend "s3" {
    bucket         = "your-tfstate-bucket"
    key            = "infra/iam/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}