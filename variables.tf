variable "nomevm" {
  type        = string
  description = "Nome da minha VM"
}

variable "environment" {
  type        = string
  description = "Ambiente da instancia da minha VM"
  default     = "dev"
}

variable "set_nome_instancias" {
  type        = set(string)
  description = "Set de nome para criar instancias"
  default     = []
}

variable "ebs_block_devices" {
  description = "Lista de volumes ebs para ser criado e montado na instancia"
  type        = list(any)
}
