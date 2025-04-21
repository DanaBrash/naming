
# Naming Module

This module standardizes Azure resource names using official abbreviations from the Microsoft Cloud Adoption Framework.

## Usage

```hcl
module "naming" {
  source   = "git::https://github.com/DanaBrash/naming"
  projName = "myproj"
  loc      = "eastus2"
  iterator = 1
}

resource "azurerm_resource_group" "example" {
  name = module.naming.resource_group
  ...
}
```

## Available Outputs

Each output corresponds to an Azure resource type. Use one of the following:

- `resource_group`
- `subscription`
- `management_group`
- `virtual_network`
- `subnet`
- `network_interface`
- `network_security_group`
- `public_ip`
- `private_endpoint`
- `dns_zone`
- `vwan`
- `vhub`
- `firewall`
- `route_table`
- `virtual_machine`
- `disk`
- `image`
- `snapshot`
- `storage_account`
- `blob_container`
- `fileshare`
- `queue`
- `table`
- `data_lake`
- `sql_server`
- `sql_database`
- `postgres`
- `mysql`
- `mariadb`
- `cosmos`
- `redis`
- `app_service_plan`
- `webapp`
- `function_app`
- `logic_app`
- `api_management`
- `container_app`
- `event_grid`
- `event_hub`
- `service_bus`
- `aks`
- `container_registry`
- `log_analytics`
- `application_insights`
- `key_vault`
- `sentinel`
- `managed_identity`
- `aad_b2c`

⚠️ If you try to access a name like `module.naming.rezgp`, Terraform will fail because `rezgp` is not a defined output. See this list for valid keys.
