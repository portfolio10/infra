terraform {
  backend "s3" {
    bucket         = "your-tfstate-bucket"
    key            = "ecs/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
