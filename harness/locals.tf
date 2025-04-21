
locals {
  # Example inputs - can be overridden by CLI or tfvars
  example_proj    = var.proj != "" ? var.proj : "demo"
  example_loc     = var.loc != "" ? var.loc : "eastus2"
  example_type    = var.type != "" ? var.type : "virtual network"
  example_iterator = var.iterator != null ? var.iterator : 1
}
