variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  default     = ""
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "ami" {
  type        = string
  description = "Ubuntu AMI ID"
  default     = "ami-047126e50991d067b"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}

variable "name_tag" {
  type        = string
  description = "Name of the EC2 instance"
  default     = "My EC2 Instance"
}

# VPC and Subnet details
variable "subnet_id" {
  description = "The Subnet ID to launch the EC2 instance in"
  type        = string
  default     = "subnet-020cb3fa62e38cb07"
}

variable "security_group_id" {
  description = "The Security Group ID to associate with the EC2 instance"
  type        = string
  default     = "sg-07d01c4aa4a3000fb"  # Default security group ID provided
}

variable "key_name" {
  description = "The key pair name to use for EC2 instance"
  type        = string
  default     = "MyKeyPair"
}
