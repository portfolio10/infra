provider "aws" { region = "ap-northeast-2" }

resource "aws_codedeploy_app" "this" {
  name = var.app_name
  compute_platform = "ECS"
}

resource "aws_codedeploy_deployment_group" "this" {
  app_name              = aws_codedeploy_app.this.name
  deployment_group_name = var.deployment_group
  service_role_arn      = var.service_role_arn

  deployment_config_name = "CodeDeployDefault.ECSAllAtOnce"

  ecs_service {
    cluster_name = var.ecs_cluster_name
    service_name = var.ecs_service_name
  }

  load_balancer_info {
    target_group_pair_info {
      target_groups {
        name = var.alb_target_group_arn
      }
    }
  }
}
