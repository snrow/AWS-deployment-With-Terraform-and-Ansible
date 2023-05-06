//file that will manage security groups\
resource "aws_security_group" "workstation_sg" {
    name = var.sg_name
    description = "AWS sg for app instance"
    vpc_id = aws_vpc.task_vpc.id

    ingress  {
        description = "Allow port 80 from loadbalancer"
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["147.235.204.237/32"]
    }

    ingress  {
        description = "SSH in"
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["147.235.204.237/32"] 
    }
    
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = var.sg_tag
  }
  
}
