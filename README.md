# terra-stack
Building and Securing Infrastructure-as-Code on DigitalOcean Cloud with Terraform, utilizing Three-Tier Architecture

[![Website](https://github.com/574n13y/terra-stack/actions/workflows/jekyll-gh-pages.yml/badge.svg)](https://github.com/574n13y/terra-stack/actions/workflows/jekyll-gh-pages.yml)

## Description: 
The terra-stack project is a comprehensive implementation of Infrastructure-as-Code (IaC) using Terraform, aimed at building and securing a three-tier architecture. This repository provides a standardized and efficient approach to deploy and manage the infrastructure required for modern web applications.

## Key Features:
- Three-Tier Architecture: Benefit from a well-organized infrastructure design consisting of presentation, application, and data tiers, ensuring scalability, separation of concerns, and maintainability.
- Terraform-Based Deployment: Leverage the power of Terraform to declaratively define and provision infrastructure resources across popular cloud platforms.
- Security Best Practices: Implement robust security measures by integrating industry-standard practices such as network isolation, access controls, encryption, and monitoring into the infrastructure design.
- Modular and Reusable Modules: Utilize modular design patterns and reusable Terraform modules to promote code reusability, reduce duplication, and simplify infrastructure management.
- Scalability and Flexibility: Effortlessly scale resources and adapt the infrastructure to changing needs, accommodating growth and evolving application requirements.
- Documentation and Examples: Find comprehensive documentation, detailed examples, and step-by-step guides to help you understand and effectively utilize the terra-stack project.

## Step by Step Guide 

1. Project directory structure as described:

```
- terra-stack/
  - main.tf
  - provider.tf
  - environments/
    - dev/
      - compute.tfvars
  - modules/
    - compute/
      - main.tf
      - variables.tf
      - outputs.tf
    - storage/
      - main.tf
      - variables.tf
      - outputs.tf
```

2. Set the environment variable with your DigitalOcean token in your shell or terminal session:

```shell
export TF_VAR_digitalocean_token="your-digitalocean-token"
```

3. Run the following Terraform commands from the `terra-stack` directory:

- `terraform init` (initialize Terraform in the root directory)
- `terraform validate` (validate the configuration files)
- `terraform plan -var-file=environments/dev/compute.tfvars -var-file=environments/dev/storage.tfvars` (preview the changes to be made)
- `terraform apply -var-file=environments/dev/compute.tfvars -var-file=environments/dev/storage.tfvars` (apply the changes)
