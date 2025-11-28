# Complete SVM Setup Example

This directory contains an example configuration for setting up a complete Storage Virtual Machine (SVM) in a NetApp ONTAP environment using Terraform. The example demonstrates how to utilize the various modules defined in the project to create an SVM, configure network interfaces, create volumes, and enable protocols such as NFS and CIFS.

## Directory Structure

- `main.tf`: The main Terraform configuration file that orchestrates the creation of the SVM, network interfaces, volumes, and protocol shares.
- `README.md`: This documentation file, providing an overview of the example setup.

## Prerequisites

Before running the example, ensure that you have the following:

- Terraform installed on your machine.
- Access to a NetApp ONTAP system with appropriate permissions to create SVMs, volumes, and network configurations.
- The NetApp ONTAP Terraform provider configured in your `providers.tf` file.

## Usage

1. **Clone the Repository**: Clone this repository to your local machine.

2. **Navigate to the Example Directory**:
   ```bash
   cd terraform-netapp-ontap/examples/complete-svm-setup
   ```

3. **Initialize Terraform**: Run the following command to initialize the Terraform working directory:
   ```bash
   terraform init
   ```

4. **Review the Configuration**: Open `main.tf` to review the configuration and make any necessary adjustments to the variables.

5. **Plan the Deployment**: Execute the following command to see what resources will be created:
   ```bash
   terraform plan
   ```

6. **Apply the Configuration**: If everything looks good, apply the configuration to create the resources:
   ```bash
   terraform apply
   ```

7. **Verify the Deployment**: After the apply completes, verify that the SVM, volumes, and network configurations have been created successfully in your NetApp ONTAP system.

## Cleanup

To remove all resources created by this example, run:
```bash
terraform destroy
```

## Additional Information

For more details on the modules used in this example, refer to the documentation in the `modules` directory. Each module has its own README file explaining its purpose and input/output variables.

Feel free to modify the example to suit your specific requirements or to explore additional configurations.