resource "aws_instance" "web_server" {

  ami = var.ami

  instance_type = var.instance_type


  subnet_id = aws_subnet.private_subnet_1.id


  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name


  vpc_security_group_ids = [
    aws_security_group.security.id
  ]


  tags = {
    Name = "APP-1"
  }

}



resource "aws_instance" "web_server_2" {

  ami = var.ami

  instance_type = var.instance_type


  subnet_id = aws_subnet.private_subnet_2.id


  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name


  vpc_security_group_ids = [
    aws_security_group.security.id
  ]


  tags = {
    Name = "APP-2"
  }

}