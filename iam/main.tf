provider "aws" {
  region = var.aws_region
}

# ■ IAM 역할 생성
data "aws_iam_policy_document" "assume_ec2" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "ec2_shard" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_ec2.json
  tags               = var.tags
}

# ■ Full Access 정책 부착
resource "aws_iam_role_policy_attachment" "ec2_fullaccess" {
  role       = aws_iam_role.ec2_shard.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
resource "aws_iam_role_policy_attachment" "s3_fullaccess" {
  role       = aws_iam_role.ec2_shard.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
resource "aws_iam_role_policy_attachment" "dynamodb_fullaccess" {
  role       = aws_iam_role.ec2_shard.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}
resource "aws_iam_role_policy_attachment" "ecs_fullaccess" {
  role       = aws_iam_role.ec2_shard.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}
resource "aws_iam_role_policy_attachment" "ecr_fullaccess" {
  role       = aws_iam_role.ec2_shard.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}
resource "aws_iam_role_policy_attachment" "codedeploy_fullaccess" {
  role       = aws_iam_role.ec2_shard.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeDeployFullAccess"
}
resource "aws_iam_role_policy_attachment" "logs_fullaccess" {
  role       = aws_iam_role.ec2_shard.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

# ■ 인스턴스 프로파일 생성
resource "aws_iam_instance_profile" "ec2_shard_profile" {
  name = var.instance_profile_name
  role = aws_iam_role.ec2_shard.name
  tags = var.tags
}