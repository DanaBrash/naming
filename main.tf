// main.tf — Naming Module

resource "null_resource" "validate_type" {
  count = local.resolved_type != null ? 0 : 1

  provisioner "local-exec" {
    command = "echo 'Invalid resource type: ${var.type}. Please refer to resourcetypes.json for supported aliases.' && exit 1"
  }
}

