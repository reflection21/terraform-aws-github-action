output "vpc_id" {
  value = aws_vpc.my_vpc.id
}
output "subnets_id" {
  value = aws_subnet.subnets.*.id
}

output "subnets_cidr" {
  value       = [for s in aws_subnet.subnets : s.cidr_block]
  description = "cidr subnets"
}
