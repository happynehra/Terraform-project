variable "region" {}

variable "ami_id" {}
variable "instance_type" {}
variable "name" {}

variable "lb_name" {}
variable "internal" {}
variable "subnet_ids" {}

variable "protocol" {}
variable "port" {}

variable "target_group_name" {}
variable "vpc_id" {}

variable "health_check_path" {}
variable "health_check_timeout" {}
variable "health_check_interval" {}
variable "healthy_threshold" {}
variable "unhealthy_threshold" {}