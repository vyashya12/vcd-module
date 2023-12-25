variable "vcd_url" {
  description = "vcd URL"
  type        = string
  sensitive   = true
}
variable "api_token" {
  description = "API token"
  type        = string
  sensitive   = true
}

variable "vapp_name" {
  description = "Set vapp name"
  type        = string
}

variable "vm_name" {
  description = "Set VM Name"
  type        = string
}

variable "allocated_ip" {
  description = "IP address to be allocated for VM"
  type        = string
}
