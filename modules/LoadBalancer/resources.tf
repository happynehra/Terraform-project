resource "aws_lb" "example" {
  name            = var.lb_name
  internal        = var.internal
  load_balancer_type = "application"
  subnets         = var.subnet_ids
}

resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.example.arn
  protocol         = var.protocol
  port             = var.port

  default_action {
    target_group_arn = aws_lb_target_group.example.arn
    type             = "forward"
  }
}

resource "aws_lb_target_group" "example" {
  name     = var.target_group_name
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id

  health_check {
    path                = var.health_check_path
    timeout             = var.health_check_timeout
    interval            = var.health_check_interval
    healthy_threshold   = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
  }
}