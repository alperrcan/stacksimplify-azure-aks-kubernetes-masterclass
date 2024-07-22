# We will define 
# 1. Terraform Settings Block
  # 1. Required Version Terraform
  # 2. Required Terraform Providers
  # 3. Terraform Remote State Storage with Azure Storage Account (last step of this section)
# 2. Terraform Provider Block for AzureRM
# 3. Terraform Resource Block: Define a Random Pet Resource

# 1. Terraform Settings Block
terraform {
  # 1. Required Version Terraform
    required_version = "1.2.6"
  # 2. Required Terraform Providers
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "3.43.0"
       }
      azuread = {
        source = "hashicorp/azuread"
        version = "2.33.0"
       }
       random = {
         source = "hashicorp/random"
         version = "3.4.3"
        }

       }
  # 3. Terraform Remote State Storage with Azure Storage Account
       backend "azurerm" {
        resource_group_name = "Workshop-Temp"
        storage_account_name = "terraformstate86"
        container_name = "value"
         
       }
}


# 2. Terraform Provider Block for AzureRM
  provider "azurerm" {
    features {
      
    }
    
  }

# 3. Terraform Resource Block: Define a Random Pet Resource
  resource "random_pet" "aksrandom" {
    
  }


  