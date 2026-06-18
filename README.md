# Terraform Yandex Cloud

Infrastructure as Code for Yandex Cloud using Terraform.

## Stack

- **Terraform** — infrastructure provisioning
- **Yandex Cloud** — cloud provider
- **VPC** — virtual network and subnet
- **Compute Instance** — Ubuntu 20.04 virtual machine

## Concepts Covered

- Terraform provider configuration
- Resource management (compute, network)
- Variables and outputs
- State management
- Infrastructure lifecycle (plan, apply, destroy)

## Repository Structure

| File | Description |
|------|-------------|
| `main.tf` | Main resources definition |
| `providers.tf` | Yandex Cloud provider configuration |
| `variables.tf` | Input variables |
| `outputs.tf` | Output values (IP addresses) |
| `.gitignore` | Excludes secrets and state files |

## How to Run

    git clone https://github.com/t44rbo/terraform-yc.git
    cd terraform-yc
    nano terraform.tfvars   # fill in cloud_id and folder_id
    cp /path/to/key.json .  # add service account key
    terraform init
    terraform plan
    terraform apply
    terraform destroy       # always destroy after use

## Infrastructure

    Yandex Cloud
    └── VPC Network
        └── Subnet (192.168.10.0/24)
            └── Compute Instance
                ├── Ubuntu 20.04
                ├── 2 vCPU
                ├── 2 GB RAM
                └── 10 GB disk

## Important

Never commit to git:
- `key.json` — service account key
- `terraform.tfvars` — contains cloud credentials  
- `terraform.tfstate` — infrastructure state
