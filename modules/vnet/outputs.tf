 output "vnet_name" {
    description = "The name of the Azure Virtual Network."
    value       = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
    description = "The address space of the Azure Virtual Network."
    value       = azurerm_virtual_network.vnet.address_space
}

output "subnet_id" {
    description = "The ID of the Azure Subnet."
    value       = azurerm_subnet.subnet1.id
}

output "subnet_address_prefixes" {
    description = "The address prefixes of the Azure Subnet."
    value       = azurerm_subnet.subnet1.address_prefixes
}