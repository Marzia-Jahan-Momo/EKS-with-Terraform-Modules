# EKS Cluster Deployment with Terraform *Modules*

This repository provides Terraform modules for deploying an Amazon EKS (Elastic Kubernetes Service) cluster along with associated infrastructure components.

## Features

- **EKS Cluster**: Managed Kubernetes cluster created using Terraform modules.
- **VPC Configuration**: VPC setup and configuration tailored for EKS.
- **Security Groups**: Security groups with custom rules for EKS cluster security.

## Why Use Terraform Modules?

### 1. **Reusability**

Terraform modules are reusable blocks of code that define a set of resources. By encapsulating the EKS setup in a module, you can reuse this configuration across multiple environments (e.g., development, staging, production) without duplicating code.

**Example:**
If you need to deploy EKS clusters in multiple regions or accounts, you can use the same module with different configurations.

### 2. **Maintainability**

Modules improve the maintainability of your Terraform code by organizing and isolating different components of your infrastructure. Changes to one module do not affect other parts of your configuration, making updates and troubleshooting easier.

**Example:**
If a new version of Kubernetes needs to be deployed, you only need to update the module, and all environments using that module will benefit from the change.

### 3. **Scalability**

Using modules helps manage complex infrastructure setups. It abstracts away the complexity of Terraform configurations by breaking them down into manageable pieces. This scalability makes it easier to handle large and complex infrastructure deployments.

**Example:**
You can have separate modules for VPC setup, EKS cluster, IAM roles, and networking. Each module handles its own responsibility, making the overall infrastructure easier to manage.

### 4. **Consistency**

Modules help enforce consistency across your infrastructure deployments. By using a standard module, you ensure that every environment follows the same configuration practices and standards.

**Example:**
All EKS clusters can be deployed with the same network settings, IAM policies, and node configurations, ensuring uniformity across environments.

### 5. **Collaboration**

Modules enable better collaboration by defining clear interfaces for how different parts of the infrastructure interact. This modular approach allows different teams or team members to work on different parts of the infrastructure without stepping on each other's toes.

**Example:**
One team can manage the network module, while another manages the EKS cluster module, and they can work independently as long as they adhere to the module interfaces.


## Usage

1. **Initialize Terraform**:
   ```sh
   terraform init
   ```

2. **Plan Configuration**:
   ```sh
   terraform plan
   ```

3. **Apply Configuration**:
   ```sh
   terraform apply --auto-approve
   ```

## Caution

- Ensure to destroy the infrastructure with auto-approve to remove all resources safely:
  ```sh
  terraform destroy --auto-approve
  ```
## Notes

- Ensure you have the necessary AWS permissions to create and manage EKS clusters and associated resources.
- The setup is modular for easy customization and extension.
