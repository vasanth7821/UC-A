locals {
  base_name_sa = var.resource_type == "storage_account" ? replace(var.base_name, "-", "") : var.base_name
  truncated_base_name_vm = length(var.base_name) > 9 ? substr(var.base_name, 0, 9) : var.base_name
  truncated_base_name_kv = length(var.base_name) > 11 ? substr(var.base_name, 0, 11) : var.base_name
  truncated_base_name_sa = length(local.base_name_sa) > 13 ? substr(local.base_name_sa, 0, 13) : local.base_name_sa
}