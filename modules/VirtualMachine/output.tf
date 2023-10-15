output "public_IP" {
  value = aws_instance.demo_instance.public_ip
}

output "instance_id" {
  value = aws_instance.demo_instance.id
}