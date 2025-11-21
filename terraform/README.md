# EKS Observability Lab - Terraform Infrastructure

This directory contains the Terraform code to provision the AWS infrastructure for the EKS Observability Lab project.

## Architecture

The Terraform code provisions the following resources:

*   **VPC**: A new VPC with public and private subnets across two Availability Zones.
*   **EKS Cluster**: A managed EKS cluster deployed into the private subnets.
*   **Node Group**: A managed node group of EC2 instances for running workloads.
*   **IAM Roles**: IAM roles for the EKS cluster and worker nodes to securely interact with other AWS services.

This setup is designed to be a cost-effective but production-style starting point for deploying Kubernetes applications and an observability stack.

## Prerequisites

Before you begin, ensure you have the following tools installed and configured:

*   **Terraform**: Version 1.0 or newer.
*   **AWS CLI**: Configured with your AWS credentials.
*   **kubectl**: The Kubernetes command-line tool.

## Usage

To provision the infrastructure, follow these steps:

1.  **Navigate to the dev environment directory:**
    ```sh
    cd envs/dev
    ```

2.  **Initialize Terraform:**
    This command downloads the required providers and initializes the backend.
    ```sh
    terraform init
    ```

3.  **Review the plan:**
    This command shows you what resources will be created.
    ```sh
    terraform plan
    ```

4.  **Apply the changes:**
    This command provisions the resources in your AWS account.
    ```sh
    terraform apply
    ```

## Connecting to the Cluster

Once the `terraform apply` command is complete, you can configure `kubectl` to connect to your new EKS cluster.

1.  **Update your kubeconfig:**
    Use the AWS CLI to automatically generate the kubeconfig entry. The `cluster_name` output from Terraform will be the name of your cluster.

    ```sh
    aws eks update-kubeconfig --region $(terraform output -raw aws_region) --name $(terraform output -raw cluster_name)
    ```

2.  **Verify the connection:**
    Run a `kubectl` command to confirm you can communicate with the cluster.
    ```sh
    kubectl get nodes
    ```
