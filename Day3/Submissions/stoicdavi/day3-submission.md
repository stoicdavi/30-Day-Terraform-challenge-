# Day 3 Submission

## Personal Information
- **Name:** David Nanjila
- **Date:** July 8, 2025
- **GitHub Username:** stoicdavi

## Task Completion
- [x] Read Chapter 2 of "Terraform: Up & Running" (Deploying a Single Server & Web Server)
- [x] Completed Required Hands-on Labs
  - [x] Lab 03: Terraform Providers
  - [x] Lab 04: Resource Blocks
  - [x] Lab 05: Data Sources
- [x] Deployed Single Server
- [x] Deployed Web Server
- [x] Created Infrastructure Diagrams

## Infrastructure Details

### Single Server Deployment
- **Region:** us-west-2
- **Instance Type:** t2.micro
- **Key Features:** 
  - Amazon Linux 2 AMI
  - Apache web server installed
  - Public IP assignment
  - SSH and HTTP access enabled

### Web Server Deployment
- **Region:** us-west-2
- **Instance Type:** t2.micro
- **Key Features:**
  - Complete VPC setup with public subnet
  - Internet Gateway for public access
  - Security Group with HTTP/HTTPS/SSH rules
  - Auto-configured Apache web server
  - Custom HTML page with server details

## Terraform Configuration

### Main Configuration (main.tf)
```hcl
# Configure the AWS provider
provider "aws" {
  region = "us-west-2"
}

# Get available availability zones
data "aws_availability_zones" "available" {}

# Create VPC - Your private cloud network
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = var.vpc_name
    Environment = "demo_environment"
    Terraform   = "true"
  }
}

# Create single public subnet - Where your server will live
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name      = "demo-public-subnet"
    Terraform = "true"
  }
}

# Create Internet Gateway - Allows internet access
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "demo-igw"
  }
}

# Security Group for EC2 Instance
resource "aws_security_group" "web_server_sg" {
  name        = "web-server-security-group"
  description = "Security group for web server"
  vpc_id      = aws_vpc.vpc.id

  # Allow SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTP access
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "web-server-sg"
    Terraform = "true"
  }
}

# EC2 Instance - Your First Server!
resource "aws_instance" "web_server" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  key_name                    = var.key_pair_name
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.web_server_sg.id]
  associate_public_ip_address = true

  # User data script to install Apache
  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello from your first Terraform server!</h1>" > /var/www/html/index.html
  EOF

  tags = {
    Name        = var.instance_name
    Environment = "demo_environment"
    Terraform   = "true"
  }
}
```

## Infrastructure Diagrams
Architecture diagrams created using draw.io:
- `single-server.png` - Basic EC2 instance deployment
- `web-server.png` - Complete web server with VPC infrastructure

## Blog Post
- **Title:** Deploying Your First Server with Terraform: A Beginner's Guide
- **Link:** [To be published]

## Social Media
- **Platform:** LinkedIn
- **Post Link:** [To be posted]

## Notes and Observations
Key learnings from Day 3:
- Understanding Terraform provider blocks and their configuration
- Resource blocks define the actual infrastructure components
- Data sources allow querying existing AWS resources
- User data scripts enable server configuration during launch
- Security groups act as virtual firewalls for EC2 instances
- VPC provides isolated network environment for resources

## Additional Resources Used
- AWS EC2 User Guide for instance configuration
- Terraform AWS Provider documentation
- draw.io for architecture diagrams
- HashiCorp hands-on labs for practical exercises

## Time Spent
- Reading: 2 hours
- Infrastructure Deployment: 2 hours
- Diagram Creation: 1 hour
- Blog Writing: 1.5 hours
- Total: 6.5 hours

## Repository Structure
```
Day3/
└── Submissions/
    └── stoicdavi/
        ├── architecture/
        │   ├── single-server.png
        │   └── web-server.png
        ├── terraform/
        │   ├── main.tf
        │   └── variables.tf
        ├── daily-update.md
        └── day3-submission.md
```

## Status: ✅ COMPLETED