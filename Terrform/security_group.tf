# ============================================
# Security Group للـ ALB
# ============================================
resource "aws_security_group" "alb_sg" {
  name        = "alb-security-group"
  description = "Allow HTTP traffic to ALB"
  vpc_id      = aws_vpc.my_vpc.id

  
  ingress {
    description = "HTTP from Internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "alb-security-group"
  }
}



# ============================================
# Security Group للـ EC2 Instances
# ============================================
resource "aws_security_group" "security" {
  name        = "ssh-security-group"
  description = "Allow SSH and app access"
  vpc_id      = aws_vpc.my_vpc.id

 


  # السماح للـ EC2 بالاستقبال من الـ ALB فقط (وليس من الإنترنت)
  ingress {
    description     = "App port 5000 from ALB only"
    from_port       = 5000
    to_port         = 5000
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "ssh-security-group"
  }
}