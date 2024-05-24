module "parent" {
  source = "./modules/parent_module"
  resources = {
    "api_server_example" = "virtual_machine",
    "key_vault_example" = "key_vault",
    "storage_acc-example" = "storage_account"
  }
}