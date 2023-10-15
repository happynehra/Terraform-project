# Terraform Reusable Module Example

This repository contains a Terraform project that demonstrates how to create reusable modules for managing AWS resources. The project consists of modules for creating an EC2 machine and a load balancer. These modules are then used to deploy an EC2 machine and attach it to the load balancer in the `ec2-tech-test` environment. The project is organized as follows:

## Directory Structure

![Directory Structure](/photo.png)

## Reusable Modules

### 1. VirtualMachine Module

The `VirtualMachine` module defines how to create an EC2 machine. It contains configuration files for inputs (variables), outputs, and the AWS resources.

-   `variables.tf`: Defines the input variables for the EC2 machine module.
-   `resources.tf`: Specifies the AWS resources (EC2 instance) to be created.
-   `output.tf`: Provides output values from the module, which can be used elsewhere.

### 2. LoadBalancer Module

The `LoadBalancer` module defines how to create an AWS load balancer. It includes the necessary input variables, resource definitions, and outputs.

-   `variables.tf`: Defines the input variables for the Load Balancer module.
-   `resources.tf`: Specifies the AWS resources (Load Balancer) to be created.
-   `output.tf`: Provides output values from the module for potential use in other parts of the infrastructure.

## Using Reusable Modules

To create an environment that includes an EC2 machine and attaches it to a load balancer, the `ec2-tech-test` directory in the `development` environment is used as an example:

1.  In the `ec2-tech-test` directory, you can define the infrastructure specific to this environment.
2.  Inside `main.tf`, you can use the `VirtualMachine` and `LoadBalancer` modules to create the EC2 machine and load balancer.
3.  Customize the inputs in `terraform.tfvars` with environment-specific values.
4.  Run Terraform commands to create and manage the infrastructure.

## Terraform Commands

Here are some common Terraform commands for managing this project:

-   `terraform init`: Initializes the project and downloads any required providers.
-   `terraform plan`: Creates an execution plan to show what changes will be made.
-   `terraform apply`: Applies the changes and creates the infrastructure.
-   `terraform destroy`: Destroys the created infrastructure.

Ensure that you have configured your AWS credentials and have Terraform installed. For more detailed information on how to use Terraform, please refer to the [official Terraform documentation](https://www.terraform.io/docs/index.html).

This project demonstrates how to create modular, reusable Terraform code for managing AWS resources. You can extend it to suit your specific infrastructure needs by customizing the modules and environment-specific configurations.
