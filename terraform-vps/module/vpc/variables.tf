variable "vpc_cidr" {
  description = "CIDR VPC range"
  type        = string

}
variable "subnet_cidr" {
  description = "CIDR subnets"
  type        = list(string)

}
variable "subnet_name" {
  description = "Names subnet"
  type        = list(string)
  default     = ["PublicSubnet1", "PublicSubnet2"]

}
