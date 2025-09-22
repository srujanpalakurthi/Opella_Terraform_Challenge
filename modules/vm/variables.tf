variable "vm_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}
variable "vm_size" {
  default = "Standard_B2ms"
}
variable "username" {
  default = "azureuser"
}
variable "password" {
  sensitive   = true
}
