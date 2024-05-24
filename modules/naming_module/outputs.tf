locals {
  resource_name_vm = "vm-${local.truncated_base_name_vm}-00"
  resource_name_kv = "kv-${lower(local.truncated_base_name_kv)}"
  resource_name_sa = "sa-${lower(local.truncated_base_name_sa)}"
}

output "resource_name" {
  value = var.resource_type == "virtual_machine" ? local.resource_name_vm : var.resource_type == "key_vault" ? local.resource_name_kv : local.resource_name_sa
}