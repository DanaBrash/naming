
variable "proj" {
  description = "Project code prefix"
  type        = string
}

variable "loc" {
  description = "Azure location name (e.g., eastus2)"
  type        = string
}

variable "type" {
  description = "Resource type (flexible input)"
  type        = stringdsf
}

variable "iterator" {
  description = "Instance count or suffix for uniqueness"
  type        = number
}
