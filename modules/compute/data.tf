data "aws_vpc" "task_vpc" {
  filter {
    name = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "main_subnet" {
  filter {
    name = "tag:Name"
    values = [var.subnet_name]
  }
}

data "aws_security_group" "workstation_sg" {
  filter {
    name = "tag:Name"
    values = [var.sg_name]
  }
}
