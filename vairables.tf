variable "resource_name" {
    description = "The name of the Azure Virtual Machine"
    type        = string
    default     = "poc-vm" # Default VM name for the PoC
}

variable "vm_size" {
    description = "The size of the Azure Virtual Machine"
    type        = string
    default     = "Standard_B1ls" # Default VM size for the PoC
}