variable "ami_id" {
    type = string
    default = "ami-0454207e5367abf01" 
}

variable "instance_type" {
  type = string
  default = "t2.micro"
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

variable "subnet_name" {
  type = string
  default = "task_subnet"
}

variable "vpc_name" {
  type = string
  default = "task-vpc"  
}

variable "sg_name" {
  type = string
  default = "task-sg"  
}
variable "sg_tag" {
  type = string
  default = "task-sg"
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