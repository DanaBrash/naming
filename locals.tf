
locals {
  normalized_loc = replace(lower(var.loc), " ", "")
}
