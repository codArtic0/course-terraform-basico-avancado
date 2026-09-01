output "storage_accout_id" {
  description = "Id da nossa Storage Account"
  value       = azurerm_storage_account.storageaccount.id
}

output "sa_primary_access_key" {
  description = "Chave primária do SA"
  value       = azurerm_storage_account.storageaccount.primary_access_key
  sensitive   = true
}