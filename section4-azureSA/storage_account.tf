resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = ""
  resource_group_name      = ""
  location                 = ""
  account_tier             = ""
  account_replication_type = ""

  tags = ""
}

resource "azurerm_storage_container" "example" {
  name                  = "vhds"
  storage_account_id    = ""
}