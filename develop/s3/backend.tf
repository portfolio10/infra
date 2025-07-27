terraform {
  backend "s3" {
    bucket         = "application-team-tfstate-bucket"
    key            = "develop/s3.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "s3-prod-locks"
    encrypt        = true
  }
}
