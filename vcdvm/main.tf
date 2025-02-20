resource "vcd_vapp_vm" "yashvmfromjenkin2" {
  vapp_name = var.vapp_name
  name      = var.vm_name
  org       = var.org_name
  vdc       = var.vdc_name

  vapp_template_id = var.vapp_template_id
  template_name = var.template_name
  cpus          = var.vCPU
  memory        = var.memory
  power_on      = true

  override_template_disk {
    bus_type        = var.bus_type
    size_in_mb      = var.disk_size
    bus_number      = 0
    unit_number     = 0
    storage_profile = "FTT1-Medium-IOPs(Performance-VMC2)"
  }

  customization {
    initscript = <<-EOT
      ${var.script}
    EOT
  }

  network {
    name               = var.network
    type               = "org"
    ip_allocation_mode = "MANUAL"
    ip                 = var.allocated_ip
  }
}
