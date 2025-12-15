# Understanding Variable Flow in Terraform NetApp ONTAP Module

## Variable Flow Overview

terraform.tfvars (your values)
    ↓
environments/dev/variables.tf (accepts input)
    ↓
environments/dev/main.tf (passes to module)
    ↓
modules/svm/variables.tf (module receives)
    ↓
modules/svm/main.tf (creates resources)

## Explanation

1. **terraform.tfvars**: This file contains the actual values for the variables defined in your Terraform configuration. You specify your desired configurations here.
2. **environments/dev/variables.tf**: This file declares the variables that will be used in the development environment. It defines the variable names and types that will accept input from `terraform.tfvars`.