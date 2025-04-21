
locals {
  # Load the JSON file
  location_map_raw = jsondecode(file("${path.module}/data/azure_location_variants.json"))

  # Normalize input: lowercase and remove spaces
  normalized_location_input = replace(lower(var.loc), " ", "")

  # Convert the JSON list to a map of normalized RegionName -> GeoCode
  location_lookup_map = {
    for entry in local.location_map_raw :
    replace(lower(entry._RegionName), " ", "") => lower(entry._GeoCode) ...
  }

  # Lookup the abbreviation
  loc_abbr = try(local.location_lookup_map[local.normalized_location_input], "unknown")
}

output "loc_abbr" {
  description = "Normalized location abbreviation"
  value       = local.loc_abbr
}
