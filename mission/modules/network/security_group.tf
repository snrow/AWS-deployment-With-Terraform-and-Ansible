//file that will manage security groups\
resource "aws_security_group" "lb_sg" {
    name = var.lb_sg_name
    description = "AWS sg for app instance"
    vpc_id = aws_vpc.task_vpc.id

    ingress  {
        description = "Allow port 80 to loadbalancer"
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"] 
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = [var.subnet_cidr]
   }

    ingress  {
        description = "SSH in"
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["16.16.121.38/32"] 
    }

    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
        ipv6_cidr_blocks = ["::/0"]
    }


    tags = {
        Name = var.lb_sg_tag
  }
  
}

resource "aws_security_group" "db_web_sg" {
    name = var.db_web_sg_name
    description = "AWS sg for app instance"
    vpc_id = aws_vpc.task_vpc.id

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = [var.subnet_cidr]
   }

    ingress  {
        description = "SSH in"
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["16.16.121.38/32"] 
    }

    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
        ipv6_cidr_blocks = ["::/0"]
    }


    tags = {
        Name = var.db_web_sg_tag
  }
  
}