#For StateFile
terraform {
  backend "azurerm" {
    resource_group_name  = "storageRG"
    storage_account_name = "singhadstorage"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}