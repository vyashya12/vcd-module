resource "vcd_vapp_vm" "yashvmfromjenkin2" {
  vapp_name = var.vapp_name
  name      = var.vm_name
  org       = var.org_name
  vdc       = var.vdc_name

  catalog_name  = "Templates"
  template_name = "Ubuntu20TLS"
  cpus          = var.vCPU
  memory        = var.memory
  power_on      = true

  override_template_disk {
    bus_type        = "parallel"
    size_in_mb      = var.disk_size
    bus_number      = 0
    unit_number     = 0
    storage_profile = "FTT1-Medium-IOPs(Performance-VMC2)"
  }

  network {
    name               = var.network
    type               = "org"
    ip_allocation_mode = "MANUAL"
    ip                 = var.allocated_ip
  }
}
