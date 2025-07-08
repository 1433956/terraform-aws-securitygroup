resource "aws_security_group" "frontend" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
    {

    Name="${var.project}-${var.environment}-${var.sg_name}"
    }

  )
}