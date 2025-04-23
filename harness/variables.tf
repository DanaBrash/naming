
variable "projName" {
  description = "Short project name prefix"
  type        = string
  default     = "cala"
}

variable "loc" {
  description = "Azure location (e.g. eastus2)"
  type        = string
  default     = "westus2"
}

variable "type" {
  description = "resource type (e.g. SQL Server)"
  type        = string
  default     = "bucket machine"
}

variable "iterator" {
  description = "Incrementing counter for uniqueness"
  type        = string
  default     = "125"
}
