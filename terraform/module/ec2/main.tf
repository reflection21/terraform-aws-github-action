resource "aws_instance" "web" {
  count                       = length(var.ec2_names)
  ami                         = "ami-0955d1e82085ce3e8"
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  security_groups             = [var.sg_ec2]
  # key_name                    = aws_key_pair.public.id
  subnet_id         = var.subnets[count.index]
  availability_zone = data.aws_availability_zones.available_zone.names[count.index]
  user_data         = <<EOF
  #!/bin/bash
    sudo apt update -y
    sudo apt install -y nginx
  EOF

  tags = {
    Name = var.ec2_names[count.index]
  }
}

# resource "aws_key_pair" "public" {
#   key_name   = "reflection"
#   public_key = file("~/.ssh/ec2_key.pub")
# }
