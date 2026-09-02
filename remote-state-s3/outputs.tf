output "subnet_id" {
  description = "ID da subnet"
  value = aws_subnet.subnet.id
}

output "sg_id" {
  description = "ID do SG"
  value = aws_security_group.sg.id
}