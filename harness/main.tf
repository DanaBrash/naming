module "naming" {
  source = "../" # while testing locally
  # source = "git::https://github.com/DanaBrash/naming.git" # switch back for external tests
  projName = local.example_proj
  loc      = local.example_loc
  type     = local.example_type
  iterator = local.example_iterator
}
