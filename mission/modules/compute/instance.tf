resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = data.aws_subnet.main_subnet.id
  associate_public_ip_address = var.associate_public_ip_adress
  private_ip = var.web_ip
  key_name = var.key_name
  vpc_security_group_ids = [
    data.aws_security_group.db_web_sg.id
  ]
  tags = {
    Name = var.web_tag 
  }
}

resource "aws_instance" "lb" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = data.aws_subnet.main_subnet.id
  associate_public_ip_address = var.associate_public_ip_adress 
  private_ip = var.lb_ip
  key_name = var.key_name
  vpc_security_group_ids = [
    data.aws_security_group.lb_sg.id
  ]
  tags = {
    Name = var.lb_tag 
  }
}

resource "aws_instance" "db" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = data.aws_subnet.main_subnet.id
  associate_public_ip_address = var.associate_public_ip_adress  
  private_ip = var.db_ip
  key_name = var.key_name
  vpc_security_group_ids = [
    data.aws_security_group.db_web_sg.id
  ]
  tags = {
    Name = var.db_tag 
  }
}