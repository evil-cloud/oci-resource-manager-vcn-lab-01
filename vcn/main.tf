resource "oci_core_virtual_network" "vcn01" {
  compartment_id = var.compartment_id
  cidr_block     = var.cidr_block
  dns_label      = var.dns_label
  display_name   = var.display_name
}

resource "oci_core_internet_gateway" "test_internet_gateway" {
  compartment_id = var.compartment_id
  vcn_id = oci_core_virtual_network.vcn01.vcn_id

  depends_on = [ 
    oci_core_virtual_network.vcn01 
  ]
}