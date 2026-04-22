Terraform is an open-source Infrastructure as Code (IaC) tool by HashiCorp that allows you to define, provision, and manage infrastructure using declarative configuration files.

Instead of manually creating resources, Terraform enables:

1) Automated infrastructure provisioning
2) Version-controlled infrastructure
3) Consistent environments across development, staging, and production

⚙️ How Terraform Works
Terraform follows a simple workflow:
. Write Configuration – Define infrastructure in .tf files
. Initialize – Download required providers using terraform init
. Plan – Preview changes using terraform plan
. Apply – Create/update resources using terraform apply

🔐 State Management
Terraform uses a state file (terraform.tfstate) to track resource changes and maintain consistency.
For production environments, remote backends are recommended:
S3 (for storage)
DynamoDB (for state locking)

This prevents:
State conflicts
Concurrent modification issues

## 🏗️ Architecture Overview

🌐 VPC with CIDR block
🔀 Public & Private Subnets across multiple AZs
🌍 Internet Gateway & NAT Gateway
🛡️ Security Groups (restricted access)
🖥️ EC2 Instances (application layer)
⚖️ Application Load Balancer (ALB)
📦 S3 Backend for remote state

## ⚙️ Prerequisites

Make sure you have the following installed:

- Terraform 
- <Cloud CLI> (e.g., AWS CLI / Azure CLI / GCP SDK)
- Git

Also configure credentials:

```bash
aws configure

## Deployment Steps

1️⃣ Clone Repository
git clone https://origin https://github.com/anujakanase/Terraform.
cd terraform-aws-infra
2️⃣ Initialize Terraform
terraform init
3️⃣ Validate
terraform validate
4️⃣ Plan
terraform plan
5️⃣ Apply
terraform apply

