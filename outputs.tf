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

output "name" {
  value = {

    # Core Scope
    "resource group"   = "${var.projName}${local.loc_abbr}rg${var.iterator}"
    "subscription"     = "${var.projName}${local.loc_abbr}sub${var.iterator}"
    "management group" = "${var.projName}${local.loc_abbr}mg${var.iterator}"

    # Networking
    "virtual network"        = "${var.projName}${local.loc_abbr}vnet${var.iterator}"
    "subnet"                 = "${var.projName}${local.loc_abbr}subnet${var.iterator}"
    "network interface"      = "${var.projName}${local.loc_abbr}nic${var.iterator}"
    "network security group" = "${var.projName}${local.loc_abbr}nsg${var.iterator}"
    "public ip"              = "${var.projName}${local.loc_abbr}pip${var.iterator}"
    "private endpoint"       = "${var.projName}${local.loc_abbr}pep${var.iterator}"
    "dns zone"               = "${var.projName}${local.loc_abbr}dnsz${var.iterator}"
    "vwan"                   = "${var.projName}${local.loc_abbr}vwan${var.iterator}"
    "vhub"                   = "${var.projName}${local.loc_abbr}vhub${var.iterator}"
    "firewall"               = "${var.projName}${local.loc_abbr}azfw${var.iterator}"
    "route table"            = "${var.projName}${local.loc_abbr}rt${var.iterator}"

    # Compute
    "virtual machine" = "${var.projName}${local.loc_abbr}vm${var.iterator}"
    "disk"            = "${var.projName}${local.loc_abbr}disk${var.iterator}"
    "image"           = "${var.projName}${local.loc_abbr}img${var.iterator}"
    "snapshot"        = "${var.projName}${local.loc_abbr}snp${var.iterator}"

    # Storage
    "storage account" = "${var.projName}${local.loc_abbr}st${var.iterator}"
    "blob container"  = "${var.projName}${local.loc_abbr}blob${var.iterator}"
    "fileshare"       = "${var.projName}${local.loc_abbr}file${var.iterator}"
    "queue"           = "${var.projName}${local.loc_abbr}queue${var.iterator}"
    "table"           = "${var.projName}${local.loc_abbr}table${var.iterator}"
    "data lake"       = "${var.projName}${local.loc_abbr}dls${var.iterator}"

    # Databases
    "sql server"   = "${var.projName}${local.loc_abbr}sql${var.iterator}"
    "sql database" = "${var.projName}${local.loc_abbr}sqldb${var.iterator}"
    "postgres"     = "${var.projName}${local.loc_abbr}psql${var.iterator}"
    "mysql"        = "${var.projName}${local.loc_abbr}mysql${var.iterator}"
    "mariadb"      = "${var.projName}${local.loc_abbr}maria${var.iterator}"
    "cosmos"       = "${var.projName}${local.loc_abbr}cos${var.iterator}"
    "redis"        = "${var.projName}${local.loc_abbr}redis${var.iterator}"

    # App Services
    "app service plan" = "${var.projName}${local.loc_abbr}asp${var.iterator}"
    "webapp"           = "${var.projName}${local.loc_abbr}app${var.iterator}"
    "function app"     = "${var.projName}${local.loc_abbr}func${var.iterator}"
    "logic app"        = "${var.projName}${local.loc_abbr}logic${var.iterator}"
    "api management"   = "${var.projName}${local.loc_abbr}apim${var.iterator}"
    "container app"    = "${var.projName}${local.loc_abbr}aca${var.iterator}"

    # Event & Messaging
    "event grid"  = "${var.projName}${local.loc_abbr}eg${var.iterator}"
    "event hub"   = "${var.projName}${local.loc_abbr}eh${var.iterator}"
    "service bus" = "${var.projName}${local.loc_abbr}sb${var.iterator}"

    # Containers & Orchestration
    "aks"                = "${var.projName}${local.loc_abbr}aks${var.iterator}"
    "container registry" = "${var.projName}${local.loc_abbr}acr${var.iterator}"

    # Monitoring
    "log analytics"        = "${var.projName}${local.loc_abbr}la${var.iterator}"
    "application insights" = "${var.projName}${local.loc_abbr}appi${var.iterator}"

    # Security & Identity
    "key vault"        = "${var.projName}${local.loc_abbr}kv${var.iterator}"
    "sentinel"         = "${var.projName}${local.loc_abbr}sent${var.iterator}"
    "managed identity" = "${var.projName}${local.loc_abbr}id${var.iterator}"
    "aad b2c"          = "${var.projName}${local.loc_abbr}b2c${var.iterator}"

  }
  description = "Map of resource type to standardized name"
}
