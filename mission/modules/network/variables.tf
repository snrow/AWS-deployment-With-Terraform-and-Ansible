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
  default = "task-db-wev-sg"  
}
variable "db_wev_sg_tag" {
  type = string
  default = "task-db-wev-sg"
}