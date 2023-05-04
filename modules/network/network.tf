resource "aws_vpc" "task_vpc" { 
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "main_subnet" {
  vpc_id = aws_vpc.task_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = {
    Name = var.subnet_name 
  }
}

resource "aws_internet_gateway" "task_igw" {
  vpc_id = aws_vpc.task_vpc.id

  tags = {
    Name = "task_igw"
  }

}

resource "aws_route_table" "task_igw_route" {
  vpc_id = aws_vpc.task_vpc.id  

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.task_igw.id
  }

  tags = {
    "Name" = "task-igw-route"
  } 
}

resource "aws_main_route_table_association" "task_igw_route" {
  
  vpc_id = aws_vpc.task_vpc.id
  route_table_id = aws_route_table.task_igw_route.id
}
