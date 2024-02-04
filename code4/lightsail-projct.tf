 resource "aws_lightsail_instance" "web-server" {
  name              = "my-terraform-web"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is my firt terraform project</h1>' | sudo tee /var/www/html/index.html"
}
resource "aws_iam_group" "cloudteam" {
  name = "cloudteam"

}
resource "aws_iam_user" "u5bt2023" {
  name = "u5bt2023"

}
output "public_ip" {
  value = aws_lightsail_instance.web-server.public_ip_address
}
output "private-ip" {
  value = aws_lightsail_instance.web-server.private_ip_address
}