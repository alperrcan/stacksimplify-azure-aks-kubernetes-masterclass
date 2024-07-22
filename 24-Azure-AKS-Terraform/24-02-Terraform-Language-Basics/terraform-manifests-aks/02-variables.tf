# https://www.terraform.io/docs/configuration/variables.html
# Input Variables
# Output Values
# Local Values (Optional)

# Define Input Variables
# 1. Azure Location (CentralUS)
  variable "location" {

    default = "CentralUS"
    description = "This will be the location where all resource will be created"
    type = string
    
  }
# 2. Azure Resource Group Name
  variable "resource_group_name" {
    type = string
    description = "This will define the RG Name"
    default = "terraform-aks"
    
  }
# 3. Azure AKS Environment Name (Dev, QA, Prod)
  variable "environment" {
    type = string
    description = "This variable defines the Environment"
    default = "dev"
    
  }

