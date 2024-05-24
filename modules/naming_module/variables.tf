variable "base_name" {}

variable "resource_type" {
  type = string
  validation {
    condition     = contains(["virtual_machine", "key_vault", "storage_account"], var.resource_type)
    error_message = "The resource_type must be virtual_machine, key_vault, or storage_account."
  }
}
