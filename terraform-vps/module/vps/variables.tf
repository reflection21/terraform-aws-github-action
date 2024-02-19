variable "vps_cidr" {
  description = "CIDR VPS range"
  type        = string

}
variable "subnet_cidr" {
  description = "CIDR subnets"
  type        = list(string)

}
variable "subnet_name" {
  description = "Names subnet"
  type        = list(string)
  default     = ["Public1", "Public2"]

}
