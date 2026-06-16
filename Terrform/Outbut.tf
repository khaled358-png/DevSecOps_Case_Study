output "alb_dns_name" {

  value = aws_lb.app_alb.dns_name

  description = "DNS of the Application Load Balancer"

}



output "app_server_1_id" {

  value = aws_instance.web_server.id

  description = "Instance ID of APP-1 for SSM"

}



output "app_server_2_id" {

  value = aws_instance.web_server_2.id

  description = "Instance ID of APP-2 for SSM"

}



output "private_ip_app_1" {

  value = aws_instance.web_server.private_ip

  description = "Private IP of APP-1"

}



output "private_ip_app_2" {

  value = aws_instance.web_server_2.private_ip

  description = "Private IP of APP-2"

}



output "vpc_id" {

  value = aws_vpc.my_vpc.id

  description = "VPC ID"

}



output "private_subnet_ids" {

  value = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]

  description = "Private subnet IDs"

}