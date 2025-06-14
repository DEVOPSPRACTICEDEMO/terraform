locals {
  final_name = "${var.project}-${var.environment}-${var.Component}"
  ec2_tags = merge(
    var.common_tags,
    {
      Name = local.final_name
      Environment = var.environment
      Project = var.project
      Component = var.Component
    }
  )
}