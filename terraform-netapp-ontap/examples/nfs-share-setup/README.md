# NFS Share Setup Example

This directory contains an example configuration for setting up NFS shares using Terraform with NetApp ONTAP.

## Overview

The NFS Share Setup example demonstrates how to create a Storage Virtual Machine (SVM), configure network settings, and enable NFS protocol on the SVM. It utilizes the Terraform modules defined in the `modules` directory.

## Prerequisites

- Ensure you have Terraform installed on your machine.
- Access to a NetApp ONTAP system with appropriate permissions.
- Configure the provider settings in `providers.tf` to connect to your NetApp ONTAP system.

## Usage

1. **Clone the repository**:
   ```
   git clone <repository-url>
   cd terraform-netapp-ontap/examples/nfs-share-setup
   ```

2. **Modify the variables**:
   Update the `terraform.tfvars` file with your specific configuration values, such as SVM name, network settings, and NFS share details.

3. **Initialize Terraform**:
   Run the following command to initialize the Terraform working directory:
   ```
   terraform init
   ```

4. **Plan the deployment**:
   Generate an execution plan to see what resources will be created:
   ```
   terraform plan
   ```

5. **Apply the configuration**:
   Deploy the resources by running:
   ```
   terraform apply
   ```

6. **Verify the deployment**:
   After the apply completes, verify that the SVM and NFS shares have been created successfully in your NetApp ONTAP system.

## Outputs

After deployment, you will receive outputs that include details about the created SVM and NFS shares. Check the Terraform output for this information.

## Cleanup

To remove the resources created by this example, run:
```
terraform destroy
```

This will delete all resources defined in the configuration.