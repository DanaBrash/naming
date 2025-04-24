output "normalized_location_input" {
  value       = local.normalized_location_input
  description = "Normalized location abbreviation"
}

output "normalized_type" {
  value       = local.normalized_type_input
  description = "Canonical output name for the given resource type alias"
}

output "loc_abbr" {
  description = "Normalized location abbreviation"
  value       = local.loc_abbr
}

output "resolved_type" {
  description = "resolved type name"
  value       = local.resolved_type
}

output "generated_name" {
  description = "generated name" 
  value = local.name[local.normalized_type_input]
}
