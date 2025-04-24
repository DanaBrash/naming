# Harness Module

The `harness` module is a test wrapper and example consumer for the [naming](https://github.com/DanaBrash/naming) module. It demonstrates how to call the naming module independently and serves as a pattern for usage in larger Terraform projects.

---

## 🧩 Purpose

This module is intended to:
- Validate `naming` module functionality in isolation.
- Show how to structure inputs and outputs for consistent reuse.
- Provide copy-pasteable examples for integration in other infrastructure projects.

---

## 🛠️ File Structure

```text
harness/
├── main.tf         # Calls the naming module and outputs results
├── variables.tf    # Defines test inputs
├── locals.tf       # Derives the normalized location abbreviation
├── outputs.tf      # Exposes naming output for testing/verification
```

---

## 🔧 Example Usage

**main.tf**
```hcl
module "naming" {
  source   = "git::https://github.com/DanaBrash/naming.git"
  projName = var.projName
  loc      = var.loc
  type     = var.type
  iterator = var.iterator
}
```

**variables.tf**
```hcl
variable "projName" {
  type        = string
  description = "The project name prefix."
  default     = "demo"
}

variable "loc" {
  type        = string
  description = "Azure location to derive abbreviation from."
  default     = "eastus2"
}

variable "type" {
  type        = string
  description = "Type of resource to name (e.g. 'webapp', 'vnet', 'sqlserver')"
  default     = "webapp"
}

variable "iterator" {
  type        = number
  description = "Instance counter used to make the name unique."
  default     = 1
}
```

**locals.tf**
```hcl
locals {
  loc_abbr = {
    eastus2 = "eu2"
    westus2 = "wu2"
    # Add more mappings as needed
  }[var.loc]
}
```

**outputs.tf**
```hcl
output "resource_name" {
  value = module.naming.name[var.type]
}
```

---

## 🔁 Reuse in Other Projects

To use this pattern:
1. Copy the structure from this harness module.
2. Replace the `source` with your Git reference or local path.
3. Customize `variables.tf` and `locals.tf` as needed.
4. Reference the output like `module.naming.name["<key>"]`.

---

## 👤 Maintained by

Dana Brash  
📫 [dana@calabash.realestate](mailto:dana@calabash.realestate)  
🌐 [calabash.realestate](https://calabash.realestate)

