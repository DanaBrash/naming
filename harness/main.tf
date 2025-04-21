module "naming" {
  source = "git::https://github.com/DanaBrash/naming.git"
  projName = local.example_proj
  loc      = local.example_loc
  type     = local.example_type
  iterator = local.example_iterator
}
