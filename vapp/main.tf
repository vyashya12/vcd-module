resource "vcd_vapp" "vmware" {
  count       = var.create_vapp ? 1 : 0
  name        = var.vapp_name
  org         = "MY1VMC2-DEMO"
  vdc         = "MY1VMC2-DemoVDC"
  power_on    = true
  description = "This vApp is for module testing"
}



