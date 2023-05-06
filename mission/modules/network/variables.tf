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

variable "sg_name" {
  type = string
  default = "task-sg"  
}
variable "sg_tag" {
  type = string
  default = "task-sg"
}