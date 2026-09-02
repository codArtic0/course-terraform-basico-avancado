output "vm_ip" {
  description = "IP da VM Criada"
  value = aws_instance.ec2.public_ip
}