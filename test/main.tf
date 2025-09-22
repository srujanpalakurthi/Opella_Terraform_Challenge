
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "Central India"
}
module "vnet" {
  source              = "../modules/vnet"
  vnet_name           = "test-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_name         =  "test-subnet"
  subnet_address_space = ["10.0.2.0/24"]
  
}

module "vm" {
  source              = "../modules/vm"
  vm_name             = "test-vm"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = module.vnet.subnet_id
  vm_size             = "Standard_B2s"
  username            = var.admin_username
  password            = var.admin_password
}