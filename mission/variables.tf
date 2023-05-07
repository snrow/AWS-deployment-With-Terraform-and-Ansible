variable "ami_id" {
    type = string
    default = "ami-0454207e5367abf01" 
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "web_ip" {
  type = string
  default = "192.168.0.12"
}

variable "lb_ip" {
  type = string
  default = "192.168.0.11"
}

variable "db_ip" {
  type = string
  default = "192.168.0.13"
}

variable "key_name" {
  type = string
  default = "eliran-task-key"
}

variable "vpc_cidr" {
  type = string
  default = "192.168.0.0/16" 
}

variable "subnet_cidr" {
  type = string
  default = "192.168.0.0/24" 
}

variable "subnet_az" {
  type = string
  default = "us-west-1a"
}

variable "subnet_name" {
  type = string
  default = "task_subnet"
}

variable "vpc_name" {
  type = string
  default = "task-vpc"  
}

variable "associate_public_ip_adress" {
  type = bool 
  default = true
}

variable "web_tag" {
  type = string
  default = "web"
}

variable "lb_tag" {
  type = string
  default = "lb"
}

variable "db_tag" {
  type = string
  default = "db"
}

variable "sg_name" {
  type = string
  default = "task-sg"  
}
variable "sg_tag" {
  type = string
  default = "task-sg"
}

variable "lb_sg_name" {
  type = string
  default = "task-lb-sg"  
}
variable "lb_sg_tag" {
  type = string
  default = "task-lb-sg"
}

variable "db_web_sg_name" {
  type = string
  default = "task-db-web-sg"  
}

variable "db_web_sg_tag" {
  type = string
  default = "task-db-web-sg"
}




