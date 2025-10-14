variable "vpc_id" {
  description = "vpc id for sg"
  type        = string
}

variable "subnets" {
  type        = list(string)
  description = "subnets cidr"
}
