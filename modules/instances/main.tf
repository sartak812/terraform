# instance in the public subnet
resource "aws_instance" "public_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id_from_network
  user_data                   = file("./modules/instances/data.sh")
  associate_public_ip_address = true
  tags = {
    Name = "public_instance"
  }
}

# instance in the private subnet
resource "aws_instance" "private_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id_from_network

  tags = {
    Name = "private_instance"
  }
}
