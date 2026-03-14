# fichero main del caso practico 2
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {
    resource_group {
      #añadimos este parámetro ya que en los terraform destroy el rg no se estaba destruyendo al seguir teninedo la el recurso vn
      prevent_deletion_if_contains_resources = false
    }
  }
}