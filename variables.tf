variable "name" {}
variable "location" {}
variable "subnet_id" {}
variable "username" {}
variable "password" {}

locals {
  module_name = "${var.name}-dataserver"
}

variable "count" {
  default     = 1
  type        = "string"
  description = "The number of VMs to provision"
}

variable "os" {
  default     = "OpenLogic:CentOS:7.3:latest"
  type        = "string"
  description = "The Marketplace image information in the following format: Offer:Publisher:Sku:Version"
}

variable "size" {
  default     = "Standard_D1_v2"
  type        = "string"
  description = "VM SKU to provision"
}

variable "disk_os_sku" {
  default     = "Standard_LRS"
  type        = "string"
  description = "Managed disk SKU for the OS disk"
}

variable "disk_data_sku" {
  default     = "Standard_LRS"
  type        = "string"
  description = "Managed disk SKU for the Data disk"
}

variable "disk_data_size_gb" {
  default     = 32
  type        = "string"
  description = "The size of the data disk"
}

variable "delete_os_disk_on_termination" {
  default     = false
  type        = "string"
  description = "Flag to delete OS disk on VM destroy"
}

variable "delete_data_disks_on_termination" {
  default     = false
  type        = "string"
  description = "Flag to delete Data disks on VM destroy"
}
