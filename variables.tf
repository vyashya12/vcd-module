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

variable "create_vapp" {
  description = "If set to true, enable vapp creation"
  type        = bool
}

variable "vapp_name" {
  description = "Set vapp name"
  type        = string
}

variable "vm_name" {
  description = "Set VM Name"
  type        = string
}
