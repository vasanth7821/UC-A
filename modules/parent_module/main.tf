module "naming" {
  for_each = var.resources

  source      = "../naming_module"
  base_name   = each.key
  resource_type = each.value
}
