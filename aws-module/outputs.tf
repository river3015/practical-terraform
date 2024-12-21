output "azs" {
  description = "List of AZs where subnets are created"
  value = module.vpc.azs
}

output "core_network_subnet_attributes_by_az" {
  description = "アベイラビリティゾーンごとのサブネット属性情報"
  value       = module.vpc.core_network_subnet_attributes_by_az
}

output "egress_only_internet_gateway" {
  description = "Egress Onlyインターネットゲートウェイの設定情報"
  value       = module.vpc.egress_only_internet_gateway
}

output "internet_gateway" {
  description = "インターネットゲートウェイの設定情報"
  value       = module.vpc.internet_gateway
}

output "nat_gateway_attributes_by_az" {
  description = "アベイラビリティゾーンごとのNATゲートウェイ属性情報"
  value       = module.vpc.nat_gateway_attributes_by_az
}

output "vpc_attributes" {
  description = "VPCの詳細な属性情報"
  value       = module.vpc.vpc_attributes
}
