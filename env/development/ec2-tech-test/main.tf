module "ec2_instance" {

    source = "../../../modules/VirtualMachine"
    
    ami_id = var.ami_id
    instance_type = var.instance_type
    name = var.name 

}

module "load_balancer" {

    source = "../../../modules/LoadBalancer"

    lb_name = var.lb_name
    internal = var.internal 
    subnet_ids = var.subnet_ids

    protocol = var.protocol
    port = var.port

    target_group_name = var.target_group_name
    vpc_id = var.vpc_id

    health_check_path = var.health_check_path
    health_check_timeout = var.health_check_timeout
    health_check_interval = var.health_check_interval
    healthy_threshold = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
    
}

resource "aws_lb_target_group_attachment" "example" {
  target_group_arn = module.load_balancer.target_group_arn
  target_id        = module.ec2_instance.instance_id
  port             = var.port
}