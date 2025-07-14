terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
      version = "7.9.0"
    }
  }
}

provider "oci" {
  auth   = "InstancePrincipal"
  region = var.region
}