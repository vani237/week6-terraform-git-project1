resource "aws_lightsail_instance" "home-server" {
  name              = "my-terraform-web"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "medium_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is deployed by sebastien </h1>' | sudo tee /var/www/html/index.html"
}

output "public_ip" {
  value = aws_lightsail_instance.home-server.public_ip_address
}
output "private-ip" {
  value = aws_lightsail_instance.home-server.private_ip_address
}