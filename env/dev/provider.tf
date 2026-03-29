terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.66.0"
        
    }
  }
}

provider "azurerm" {
    features{}
    subscription_id="770fa3bb-3c61-4fca-b236-53ca59861b4a"
}