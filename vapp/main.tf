resource "vcd_vapp" "vmware" {
  name        = "yash-vApp-provisionerfromjenkin"
  org         = "MY1VMC2-DEMO"
  vdc         = "MY1VMC2-DemoVDC"
  power_on    = true
  description = "This vApp is for module testing"
}



