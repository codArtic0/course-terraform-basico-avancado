resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = "West Europe"
  tags     = local.common_tags
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.location
  account_tier             = var.tier
  account_replication_type = var.replication

  tags = local.common_tags
}

resource "azurerm_storage_container" "example" {
  name               = var.container_name
  storage_account_id = azurerm_storage_account.storageaccount.id
}