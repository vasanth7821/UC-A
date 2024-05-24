output "resource_names" {
  value = { for k, v in module.naming : k => v.resource_name }
}




 