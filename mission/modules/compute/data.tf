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

data "aws_security_group" "lb_sg" {
  filter {
    name = "tag:Name"
    values = [var.lb_sg_name]
  }
}

data "aws_security_group" "db_web_sg" {
  filter {
    name = "tag:Name"
    values = [var.db_web_sg_name]
  }
}
