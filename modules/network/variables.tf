variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"  ## 10.0.0.0 - 10.0.255.255
}

variable "subnet_cidr" {
  type = string
  default = "10.0.1.0/24" ##10.0.1.0 - 10.0.1.255
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