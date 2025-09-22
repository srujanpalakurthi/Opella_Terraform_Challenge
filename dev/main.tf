
provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = "dev-rg"
  location = "Central India"
}
module "vnet" {
  source              = "../modules/vnet"
  vnet_name           = "dev-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_name         =  "dev-subnet"
  subnet_address_space = ["10.0.2.0/24"]
  
}

module "vm" {
  source              = "../modules/vm"
  vm_name             = "dev-vm"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = module.vnet.subnet_id
  vm_size             = "Standard_B2s"
  username            = var.admin_username
  password            = var.admin_password
}