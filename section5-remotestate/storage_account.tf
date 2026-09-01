resource "azurerm_resource_group" "rg_curso_terraform" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "sa_curso_terraform" {
  name                     = var.sa_name
  resource_group_name      = azurerm_resource_group.rg_curso_terraform.name
  location                 = azurerm_resource_group.rg_curso_terraform.location
  account_tier             = var.tier
  account_replication_type = var.replication

  tags = local.common_tags

  blob_properties {
    versioning_enabled = true
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "vhds"
  storage_account_id    = azurerm_storage_account.sa_curso_terraform.id
  container_access_type = "private"
}