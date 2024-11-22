resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name  # Reference to your key pair
  
  # VPC and Subnet configuration
  subnet_id                 = var.subnet_id
  vpc_security_group_ids    = [var.security_group_id]

  tags = {
    Name = var.name_tag
  }
}

# Output the EC2 instance ID
output "ec2_instance_id" {
  value = aws_instance.public_instance.id
}
