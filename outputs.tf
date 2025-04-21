
# Core Infrastructure
output "resource_group"         { value = "${var.projName}${local.loc_abbr}rg${var.iterator}" }
output "subscription"           { value = "${var.projName}${local.loc_abbr}sub${var.iterator}" }
output "management_group"       { value = "${var.projName}${local.loc_abbr}mg${var.iterator}" }

# Networking
output "virtual_network"        { value = "${var.projName}${local.loc_abbr}vnet${var.iterator}" }
output "subnet"                 { value = "${var.projName}${local.loc_abbr}subnet${var.iterator}" }
output "network_interface"      { value = "${var.projName}${local.loc_abbr}nic${var.iterator}" }
output "network_security_group" { value = "${var.projName}${local.loc_abbr}nsg${var.iterator}" }
output "public_ip"              { value = "${var.projName}${local.loc_abbr}pip${var.iterator}" }
output "private_endpoint"       { value = "${var.projName}${local.loc_abbr}pep${var.iterator}" }
output "dns_zone"               { value = "${var.projName}${local.loc_abbr}dnsz${var.iterator}" }
output "vwan"                   { value = "${var.projName}${local.loc_abbr}vwan${var.iterator}" }
output "vhub"                   { value = "${var.projName}${local.loc_abbr}vhub${var.iterator}" }
output "firewall"               { value = "${var.projName}${local.loc_abbr}azfw${var.iterator}" }
output "route_table"            { value = "${var.projName}${local.loc_abbr}rt${var.iterator}" }

# Compute
output "virtual_machine"        { value = "${var.projName}${local.loc_abbr}vm${var.iterator}" }
output "disk"                   { value = "${var.projName}${local.loc_abbr}disk${var.iterator}" }
output "image"                  { value = "${var.projName}${local.loc_abbr}img${var.iterator}" }
output "snapshot"               { value = "${var.projName}${local.loc_abbr}snp${var.iterator}" }

# Storage
output "storage_account"        { value = "${var.projName}${local.loc_abbr}st${var.iterator}" }
output "blob_container"         { value = "${var.projName}${local.loc_abbr}blob${var.iterator}" }
output "fileshare"              { value = "${var.projName}${local.loc_abbr}file${var.iterator}" }
output "queue"                  { value = "${var.projName}${local.loc_abbr}queue${var.iterator}" }
output "table"                  { value = "${var.projName}${local.loc_abbr}table${var.iterator}" }
output "data_lake"              { value = "${var.projName}${local.loc_abbr}dls${var.iterator}" }

# Database
output "sql_server"             { value = "${var.projName}${local.loc_abbr}sql${var.iterator}" }
output "sql_database"           { value = "${var.projName}${local.loc_abbr}sqldb${var.iterator}" }
output "postgres"               { value = "${var.projName}${local.loc_abbr}psql${var.iterator}" }
output "mysql"                  { value = "${var.projName}${local.loc_abbr}mysql${var.iterator}" }
output "mariadb"                { value = "${var.projName}${local.loc_abbr}maria${var.iterator}" }
output "cosmos"                 { value = "${var.projName}${local.loc_abbr}cos${var.iterator}" }
output "redis"                  { value = "${var.projName}${local.loc_abbr}redis${var.iterator}" }

# App Services
output "app_service_plan"       { value = "${var.projName}${local.loc_abbr}asp${var.iterator}" }
output "webapp"                 { value = "${var.projName}${local.loc_abbr}app${var.iterator}" }
output "function_app"           { value = "${var.projName}${local.loc_abbr}func${var.iterator}" }
output "logic_app"              { value = "${var.projName}${local.loc_abbr}logic${var.iterator}" }
output "api_management"         { value = "${var.projName}${local.loc_abbr}apim${var.iterator}" }
output "container_app"          { value = "${var.projName}${local.loc_abbr}aca${var.iterator}" }

# Event & Messaging
output "event_grid"             { value = "${var.projName}${local.loc_abbr}eg${var.iterator}" }
output "event_hub"              { value = "${var.projName}${local.loc_abbr}eh${var.iterator}" }
output "service_bus"            { value = "${var.projName}${local.loc_abbr}sb${var.iterator}" }

# Containers & Orchestration
output "aks"                    { value = "${var.projName}${local.loc_abbr}aks${var.iterator}" }
output "container_registry"     { value = "${var.projName}${local.loc_abbr}acr${var.iterator}" }

# Monitoring & Security
output "log_analytics"          { value = "${var.projName}${local.loc_abbr}la${var.iterator}" }
output "application_insights"   { value = "${var.projName}${local.loc_abbr}appi${var.iterator}" }
output "key_vault"              { value = "${var.projName}${local.loc_abbr}kv${var.iterator}" }
output "sentinel"               { value = "${var.projName}${local.loc_abbr}sent${var.iterator}" }

# Identity
output "managed_identity"       { value = "${var.projName}${local.loc_abbr}id${var.iterator}" }
output "aad_b2c"                { value = "${var.projName}${local.loc_abbr}b2c${var.iterator}" }
