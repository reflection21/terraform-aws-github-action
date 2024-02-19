variable "sg_id" {
  description = "sg for ald"
  type        = string
}
variable "subnet_id" {
  description = "subnet id for alb"
  type        = list(string)

}
variable "vps_id" {
  description = "vps id for alb"
  type        = string
}
variable "instances" {
  description = "instansec for alb"
  type        = list(string)
}
