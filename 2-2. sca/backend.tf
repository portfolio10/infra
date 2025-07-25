terraform {
  backend "s3" {
    bucket         = "your-tfstate-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"  # jenkins/, sast/, sca/, dast/ 각각에 맞게 key 경로 자동 설정
    region         = "ap-northeast-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
