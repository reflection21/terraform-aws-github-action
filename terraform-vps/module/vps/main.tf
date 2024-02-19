#vpc
resource "aws_vpc" "my_vps" {
  cidr_block       = var.vps_cidr
  instance_tenancy = "default"
  tags = {
    "Name" = "my_vps"
  }
}
#subnet(2)
resource "aws_subnet" "subnets" {
  count             = length(var.subnet_cidr)
  vpc_id            = aws_vpc.my_vps.id
  cidr_block        = var.subnet_cidr[count.index]
  availability_zone = data.aws_availability_zones.availab_zone.names[count.index]
  tags = {
    Name = var.subnet_name[count.index]
  }
}
#igw
#route table
#route table association
