output "vm_id" {
  description = "The id of the Azure Virtual Machine."
  value = azurerm_windows_virtual_machine.windows_vm.id
}

output "vm_private_ip" {
  description = "The Priveate IP of Azure virtual Machine."
  value = azurerm_network_interface.vm_nic.private_ip_address
}