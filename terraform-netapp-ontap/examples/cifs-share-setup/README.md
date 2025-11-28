# CIFS Share Setup Example

This directory contains an example configuration for setting up CIFS shares using Terraform with NetApp ONTAP.

## Overview

The `cifs-share-setup` example demonstrates how to create a Storage Virtual Machine (SVM), configure network settings, and enable CIFS protocol on the SVM. It also includes the creation of CIFS shares.

## Prerequisites

- Ensure you have Terraform installed on your machine.
- Access to a NetApp ONTAP system with appropriate permissions to create SVMs and CIFS shares.
- Configure the provider settings in `providers.tf` to connect to your NetApp ONTAP system.

## Usage

1. **Clone the Repository**: Clone this repository to your local machine.

2. **Navigate to the Example Directory**:
   ```bash
   cd terraform-netapp-ontap/examples/cifs-share-setup
   ```

3. **Initialize Terraform**: Run the following command to initialize the Terraform working directory:
   ```bash
   terraform init
   ```

4. **Review the Configuration**: Open `main.tf` to review the configuration settings. Modify any variables as needed.

5. **Plan the Deployment**: Execute the following command to see the execution plan:
   ```bash
   terraform plan
   ```

6. **Apply the Configuration**: If the plan looks good, apply the configuration to create the resources:
   ```bash
   terraform apply
   ```

7. **Verify the Setup**: After the deployment is complete, verify that the SVM and CIFS shares have been created successfully in your NetApp ONTAP system.

## Cleanup

To remove the resources created by this example, run:
```bash
terraform destroy
```

## Additional Information

For more details on the modules used in this example, refer to the documentation in the `modules` directory. You can customize the setup by modifying the input variables in the `variables.tf` files located in the respective module directories.