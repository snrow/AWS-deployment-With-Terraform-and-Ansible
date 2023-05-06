module "compute" {
  source = "./modules/compute" // where he found in directory and there u will need to put all the terraform files he needed
  //after source we will declare the variables and transfer them into the module //
  //If i already declared them in the module this will override them 
  depends_on = [module.network]   
  ami_id = var.ami_id
  instance_type = var.instance_type
  associate_public_ip_adress = var.associate_public_ip_adress
  vpc_name = var.vpc_name
}

module "network" {
  source = "./modules/network"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  subnet_az = var.subnet_az
  vpc_name = var.vpc_name
  subnet_name = var.subnet_name
  
}