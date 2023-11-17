resource "vcd_vapp_vm" "yashvmfromjenkin2" {
  vapp_name     = "yash-vApp-provisionerfromjenkin"
  name          = "yashvmfrom"
  org           = "MY1VMC2-DEMO"
  vdc           = "MY1VMC2-DemoVDC"
  computer_name = "MyFirstComputerVCD"
  description   = "The first VM for testing purposes"

  catalog_name  = "Templates"
  template_name = "Ubuntu20TLS"
  cpus          = 2
  memory        = 2048
  power_on      = true

  override_template_disk {
    bus_type        = "parallel"
    size_in_mb      = "40960"
    bus_number      = 0
    unit_number     = 0
    storage_profile = "FTT1-Medium-IOPs(Performance-VMC2)"
  }

  network {
    name               = "private"
    type               = "org"
    ip_allocation_mode = "MANUAL"
    ip                 = "10.10.10.1"
  }
}
