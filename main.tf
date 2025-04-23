// main.tf — Naming Module

locals {
  # Load the JSON files
  location_alias_map        = jsondecode(file("${path.module}/data/azure_location_variants.json"))
  resource_type_alias_map   = jsondecode(file("${path.module}/data/resourcetypes.json"))

  # Normalize inputs
  normalized_location_input = replace(lower(var.loc), " ", "")
  normalized_type_input     = replace(lower(var.type), " ", "")

  # Resolved values
  loc_abbr      = try(local.location_alias_map[local.normalized_location_input], "unknown")
  resolved_type = try(local.resource_type_alias_map[local.normalized_type_input], null)
}

resource "null_resource" "validate_type" {
  count = local.resolved_type != null ? 0 : 1

  provisioner "local-exec" {
    command = "echo 'Invalid resource type: ${var.type}. Please refer to resourcetypes.json for supported aliases.' && exit 1"
  }
}

