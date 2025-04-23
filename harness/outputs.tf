output "resource_name" {
  value = module.naming.name[module.naming.normalized_type]
}

output "normalized_type" {
  value = module.naming.normalized_type
}

output "location_abbreviation" {
  value = module.naming.loc_abbr
}


