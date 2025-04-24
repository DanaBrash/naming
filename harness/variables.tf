
variable "projName" {
  description = "Short project name prefix"
  type        = string
}

variable "loc" {
  description = "Azure location (e.g. eastus2)"
  type        = string
}

variable "type" {
  description = "resource type (e.g. SQL Server)"
  type        = string
}

variable "iterator" {
  description = "Incrementing counter for uniqueness"
  type        = string
}
