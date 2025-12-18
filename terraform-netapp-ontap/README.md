# OpenTofu NetApp ONTAP Deployment

This project provides OpenTofu modules and configurations for deploying and managing NetApp ONTAP resources in an on-premise environment. The modules are designed to facilitate the creation of Storage Virtual Machines (SVMs), volumes, network interfaces, and protocol shares (NFS and CIFS).

> **Note**: This project uses OpenTofu, a fork of Terraform that is fully compatible with Terraform configurations. All Terraform HCL syntax applies here.

## Project Structure

- **modules/**: Contains reusable Terraform modules for different components of the NetApp ONTAP deployment.
  - **svm/**: Module for creating and managing Storage Virtual Machines.
  - **network/**: Module for configuring network interfaces, VLANs, and broadcast domains.
  - **volume/**: Module for creating and managing volumes within SVMs.
  - **nfs/**: Module for enabling NFS protocol and creating NFS shares.
  - **cifs/**: Module for enabling CIFS protocol and creating CIFS shares.

- **environments/**: Contains environment-specific configurations for development, staging, and production.
  - **dev/**: Configuration for the development environment.
  - **staging/**: Configuration for the staging environment.
  - **prod/**: Configuration for the production environment.

- **examples/**: Provides example configurations demonstrating how to use the modules.
  - **complete-svm-setup/**: Example for a complete SVM setup.
  - **nfs-share-setup/**: Example for setting up NFS shares.
  - **cifs-share-setup/**: Example for setting up CIFS shares.

- **providers.tf**: Specifies the provider configuration for the NetApp ONTAP provider.

- **versions.tf**: Defines the required Terraform version and provider versions for the project.

- **.gitignore**: Specifies files and directories to be ignored by Git.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Configure Variables**: Update the variable files in the `environments` directory to match your environment settings.
3. **Initialize OpenTofu**: Run `tofu init` in the desired environment directory to initialize the OpenTofu workspace.
4. **Plan the Deployment**: Use `tofu plan` to review the resources that will be created.
5. **Apply the Configuration**: Execute `tofu apply` to create the resources defined in the configuration.

### Alternative: Using Terraform

If you prefer to use Terraform instead of OpenTofu, replace all `tofu` commands with `terraform` in the steps above. The configuration is fully compatible with both tools.

## Usage

Refer to the example configurations in the `examples` directory for guidance on how to use the modules effectively. Each example includes a `README.md` file with specific instructions.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.