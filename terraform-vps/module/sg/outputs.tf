output "sg_lb" {
  value       = aws_security_group.alb_sg.id
  description = "sg for lb"
}

output "sg_ec2" {
  value       = aws_security_group.ec2_sg.id
  description = "sg for ec2"
}
