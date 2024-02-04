output "instince-ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}
output "my-arn" {
  value = aws_lightsail_instance.custom.arn
}