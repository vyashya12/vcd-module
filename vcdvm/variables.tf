variable "vm_name" {
  description = "Set VM Name"
  type        = string
}

variable "vapp_name" {
  description = "Set vapp name"
  type        = string
}

variable "allocated_ip" {
  description = "IP address to be allocated for VM"
  type        = string
}

variable "org_name" {
  description = "Set ORG"
  type        = string
}

variable "vdc_name" {
  description = "Set VDC Name"
  type        = string
}

variable "vCPU" {
  description = "Add number of vCPU"
  type        = string
}

variable "memory" {
  description = "Add memory for VM"
  type        = string
}

variable "network" {
  description = "Attach IP to this network"
  type        = string
}

variable "disk_size" {
  description = "Add disk size"
  type        = string
}

variable "template_name" {
  description = "Add template"
  type        = string
}

variable "bus_type" {
  description = "Add bus type"
  type        = string
}

variable "script" {
  description = "Script to run"
  type        = string
}

variable "vapp_template_id" {
  description = "ID of the vApp template to use for VM provisioning"
  type        = string
}
