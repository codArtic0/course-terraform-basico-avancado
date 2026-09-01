# AWS
variable "name_bucket" {
  type = string
  default = "bucketversioningcursoterraform"
}

#AZURE
variable "rg_name" {
  type = string
  default = "rg-terraform"
}

variable "sa_name" {
  type = string
  default = "sacursoterraformversioning"
}

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