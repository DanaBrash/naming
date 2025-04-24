output "normalized_loc" {
  value       = local.normalized_loc
  description = "Normalized location abbreviation"
}

output "normalized_type" {
  value       = local.resolved_type
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
