output "vpc_id" {
  value       = aws_vpc.custom_vpc.id
  description = "Aws vpc id"
}

output "vpc_arn" {
  value       = aws_vpc.custom_vpc.arn
  description = "Aws vpc arn"
}

output "vpc_ipv6_cidr" {
  value       = aws_vpc.custom_vpc.ipv6_cidr_block
  description = "Aws vpc ipv6 cidr block"
}

output "igw_id" {
  value       = aws_internet_gateway.igw.id
  description = "Internet gateway id"
}
