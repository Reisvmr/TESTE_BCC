# variables.tf
variable "vm_name" {
  description = "DNS"
  type        = string
  default     = "rock-linux-9-4-vm"
}

variable "vm_cpus" {
  description = "Quantidade de CPUs"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "Memória RAM (em MB)"
  type        = number
  default     = 2048
}

variable "vm_disk_size" {
  description = "Tamanho do disco (em MB)"
  type        = number
  default     = 20000
}

variable "rock_linux_iso_path" {
  description = "Caminho da ISO do Rocky Linux 9.4"
  type        = string
  default     = "/media/reisvmr/dados/ISOs/Rocky-9.2-x86_64-dvd.iso"
}
