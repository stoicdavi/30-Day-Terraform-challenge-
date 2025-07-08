variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "vpc_name" {
  type    = string
  default = "demo-vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# EC2 Instance Variables
variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "instance_name" {
  type        = string
  default     = "my-first-server"
  description = "Name tag for the EC2 instance"
}

variable "key_pair_name" {
  type        = string
  default     = "my-key-pair"
  description = "Name of the AWS key pair for SSH access"
}
