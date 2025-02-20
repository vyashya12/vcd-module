provider "vcd" {
  url                  = var.vcd_url
  api_token            = var.api_token
  allow_unverified_ssl = true
  user                 = "none"
  password             = "none"
  auth_type            = "api_token"
  sysorg               = "System"
  org                  = var.org_name
  vdc                  = var.vdc_name
}

module "vcd_vm" {
  source        = "./vcdvm"
  vapp_name     = var.vapp_name
  vm_name       = var.vm_name
  allocated_ip  = var.allocated_ip
  org_name      = var.org_name
  vdc_name      = var.vdc_name
  vCPU          = var.vCPU
  memory        = var.memory
  network       = var.network
  disk_size     = var.disk_size
  vapp_template_id = var.vapp_template_id
  template_name = var.template_name
  bus_type      = var.bus_type
  script        = var.script
}
