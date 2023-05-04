//File that manage providers
# terraform {
#   required_providers {

#     aws = {

#         source = "hashicorp/aws"
#         version = "~> 3.14.1"

#     }
#   }
# }

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}
# provider "aws" {

#   region = "us-west-1"

# }