# 1) S3 버킷 생성
resource "aws_s3_bucket" "sast" {
  bucket = var.sast_s3_bucket_name

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.tags
}

# 2) 퍼블릭 액세스 차단 설정
resource "aws_s3_bucket_public_access_block" "sast_block" {
  bucket = aws_s3_bucket.sast.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# 1) S3 버킷 생성
resource "aws_s3_bucket" "dast" {
  bucket = var.dast_s3_bucket_name

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.tags
}

# 2) 퍼블릭 액세스 차단 설정
resource "aws_s3_bucket_public_access_block" "dast_block" {
  bucket = aws_s3_bucket.dast.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}