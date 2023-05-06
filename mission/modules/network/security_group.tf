//file that will manage security groups\
resource "aws_security_group" "lb_sg" {
    name = var.lab_sg_name
    description = "AWS sg for app instance"
    vpc_id = aws_vpc.task_vpc.id

    ingress  {
        description = "Allow port 80 from loadbalancer"
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["16.16.121.38/32"] 
    }

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "TCP"
        cidr_blocks = [var.subnet_cidr]
   }

    ingress  {
        description = "SSH in"
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["16.16.121.38/32"] 
    }

    tags = {
        Name = var.lb_sg_tag
  }
  
}

resource "aws_security_group" "db_web_sg" {
    name = var.lab_sg_name
    description = "AWS sg for app instance"
    vpc_id = aws_vpc.task_vpc.id

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "TCP"
        cidr_blocks = [var.subnet_cidr]
   }

    ingress  {
        description = "SSH in"
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["16.16.121.38/32"] 
    }

    tags = {
        Name = var.lb_sg_tag
  }
  
}