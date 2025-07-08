# Daily Update - Day 3

## Personal Information
- **Name:** David Nanjila
- **GitHub Username:** stoicdavi
- **Date:** July 8, 2025
- **Time of Completion:** 7:00 pm

## Task Completed
✅ **Day 3: Deploying Basic Infrastructure with Terraform**

### Tasks Accomplished:
1. **Reading**: Completed Chapter 2 sections on "Deploying a Single Server" and "Deploying a Web Server"
2. **Hands-on Labs**: 
   - Completed Lab 03: Terraform Providers configuration
   - Completed Lab 04: Resource Blocks implementation
   - Completed Lab 05: Data Sources usage
3. **Infrastructure Deployment**: 
   - Successfully deployed single EC2 server on AWS
   - Created complete web server with VPC, subnet, and security groups
   - Configured Apache web server with custom HTML page
4. **Architecture Design**: Created infrastructure diagrams using draw.io
5. **Blog Post**: "Deploying Your First Server with Terraform: A Beginner's Guide"
6. **Social Media**: Posted progress with required hashtags

### Time Investment:
- **Reading**: 2 hours
- **Infrastructure Deployment**: 2 hours
- **Diagram Creation**: 1 hour
- **Blog Writing**: 1.5 hours
- **Total**: 6.5 hours

### Key Learnings:
- Terraform provider blocks configure cloud platform connections
- Resource blocks define actual infrastructure components
- Data sources query existing cloud resources
- User data scripts automate server configuration
- Security groups provide network-level security
- VPC creates isolated network environments

### Infrastructure Deployed:
- **VPC**: Custom virtual private cloud (10.0.0.0/16)
- **Subnet**: Public subnet for web server (10.0.1.0/24)
- **Internet Gateway**: Enables public internet access
- **Security Group**: HTTP, HTTPS, and SSH access rules
- **EC2 Instance**: t2.micro with Amazon Linux 2
- **Web Server**: Apache with custom HTML page

### Challenges Overcome:
- Understanding VPC networking concepts
- Configuring security group rules properly
- Setting up user data scripts for server automation
- Creating proper resource dependencies in Terraform

### Next Steps:
- Continue with Day 4: Advanced Terraform configurations
- Explore Terraform variables and outputs
- Learn about Terraform state management

## Status: ✅ COMPLETED