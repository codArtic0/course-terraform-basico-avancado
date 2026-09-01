variable "location" {
  description = "Região que será criado os recursos na Azure"
  type        = string
  default     = "West Europe"

}

variable "tier" {
  description = "Tier da Storage Account"
  type        = string
  default     = "Standard"
}

variable "replication" {
  description = "Tipo de replicação de dados na Storage Account"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Nome do Resource group"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "Nome do Storage Account"
  type        = string
  default     = "sacursoterraformunicame486"
}

variable "container_name" {
  description = "Nome do container"
  type        = string
  default     = "container-curso-terraform"
}