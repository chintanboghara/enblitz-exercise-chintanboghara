provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  associate_public_ip_address = true
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "EC2-key-pair"
    tags = {
    "Name" = "EC2-Variable"
  }

}

output "public_ip" {
  value = aws_instance.example.public_ip
}

output "private_ip" {
  value = aws_instance.example.private_ip