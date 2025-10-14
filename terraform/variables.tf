variable "vpc_cidr" {
  description = "CIDR VPS range"
  type        = string

}
variable "subnet_cidr" {
  description = "CIDR subnets"
  type        = list(string)
}
