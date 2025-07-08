# Day 2 Submission

## Personal Information
- **Name:** David Nanjila
- **Date:** July 7, 2025
- **GitHub Username:** stoicdavi

## Task Completion
- [x] Read Chapter 2 of "Terraform: Up & Running" (Setting Up Your AWS Account & Installing Terraform)
- [x] Completed Required Hands-on Labs
  - [x] Lab 01: Setup your AWS Account (already had one)
  - [x] Lab 02: Install AWS CLI
  - [x] Lab 03: Installing Terraform and set up Terraform with AWS
- [x] Set up AWS account
- [x] Install Terraform locally
- [x] Install and configure AWS CLI
- [x] Install Visual Studio Code (VSCode) and add the AWS plugin
- [x] Configure VSCode to work with AWS

## Setup Validation

### Terraform Installation
- **Version:** v1.9.8
- **Installation Method:** Ubuntu CLI following the Terraform documentation
- **Path:** /usr/local/bin/terraform

### AWS CLI Configuration
- **Version:** aws-cli/2.27.45
- **Default Region:** us-west-2
- **Profile Configuration:** 1 profile configured (David Nanjila)

### VSCode Configuration
- **Extensions Installed:** HashiCorp Terraform, AWS Toolkit
- **AWS Plugin Status:** Configured

## Configuration Files
Configuration screenshots and validation files in the `setup-validation` folder:
- `terraform-version.txt` - Output of `terraform version`
- `aws-config-validation.txt` - Output of `aws sts get-caller-identity` (sanitized)
- `vscode-extensions.png` - Screenshot of installed extensions

## Blog Post
- **Title:** Step-by-Step Guide to Setting Up Terraform, AWS CLI, and Your AWS Environment
- **Link:** [To be published]

## Social Media
- **Platform:** LinkedIn
- **Post Link:** https://www.linkedin.com/posts/david-nanjila_infrastructure-as-code-iac-revolutionizing-activity-7345896214820745216-ebde

## Notes and Observations
Key learnings from Day 2 setup process:
- Terraform installation on Ubuntu was straightforward using the official documentation
- AWS CLI configuration required careful attention to region selection
- VSCode extensions significantly improve Terraform development experience
- Proper AWS credentials setup is crucial for Terraform-AWS integration

## Additional Resources Used
- Official Terraform documentation for Ubuntu installation
- AWS CLI User Guide for configuration
- HashiCorp Terraform VSCode extension documentation

## Time Spent
- Reading: 2 hours
- AWS Account Setup: 1 hour
- Terraform Installation: 1 hour
- AWS CLI Configuration: 1 hour
- VSCode Setup: 10 minutes
- Blog Writing: 1 hour
- Total: 6 hours 10 minutes

## Repository Structure
```
Day2/
└── Submissions/
    └── stoicdavi/
        ├── setup-validation/
        │   ├── terraform-version.txt
        │   ├── aws-config-validation.txt
        │   └── vscode-extensions.png
        ├── daily-update.md
        └── day2-submission.md
```

## Setup Validation Commands
Commands used to validate the setup:

```bash
# Terraform validation
terraform version
terraform providers

# AWS CLI validation  
aws --version
aws sts get-caller-identity
aws configure list

# VSCode validation
code --version
code --list-extensions | grep -E "(aws|terraform)"
```

## Troubleshooting Notes
- Initial AWS CLI configuration required setting up proper IAM permissions
- Terraform path configuration needed to be added to system PATH
- VSCode AWS extension required workspace configuration for proper AWS integration

## Status: ✅ COMPLETED