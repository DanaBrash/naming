
locals {
  normalized_loc = replace(lower(var.loc), " ", "")
  normalized_type = replace(lower(var.type), " ", "")
}
