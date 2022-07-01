#root module backend
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  backend "azurerm" {
    resource_group_name = "storage"
    storage_account_name = "w7tfstate"
    container_name = "tfstate"
    key = "${var.environment}.terraform.tfstate"
  }

  required_version = ">= 1.1.0"
}
