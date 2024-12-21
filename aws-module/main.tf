provider "aws" {
  region = "ap-northeast-1"
}

module "vpc" {
  source  = "aws-ia/vpc/aws"
  version = "4.4.3"

  name = "practical-terraform-vpc"
  cidr_block = "172.16.0.0/16"
  vpc_egress_only_internet_gateway = true
  az_count = 3

  subnets = {
    public = {
      name_prefix = "public"
      netmask = 24
      nat_gateway_configuration = "all_azs"
    }

    private = {
      name_prefix = "private"
      netmask = 24
      connect_to_public_natgw = true
    }
  }
}
