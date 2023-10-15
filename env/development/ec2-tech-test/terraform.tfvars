region                = "ap-south-1"

ami_id                = "ami-0a5ac53f63249fba0"
instance_type         = "t2.micro"
name                  = "ec2-test"

lb_name               = "lb-test"
internal              = false
subnet_ids            = [ "subnet-0d86d48b96df23bf5", "subnet-003ae80b3d827ad86" ]

protocol              = "HTTP"
port                  = 80

target_group_name     = "TG-test"
vpc_id                = "vpc-0ad5f41b212f76134"
         
health_check_path     = "/health"
health_check_timeout  = 5
health_check_interval = 30
healthy_threshold     = 2
unhealthy_threshold   = 2