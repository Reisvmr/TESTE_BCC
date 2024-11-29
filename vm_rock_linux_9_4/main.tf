resource "virtualbox_vm" "rock_linux" {
  name   = var.vm_name  # Nome da VM vindo do arquivo variables.tf
  cpus   = var.vm_cpus  # Número de CPUs
  memory = var.vm_memory  # Memória RAM (em MB)

  # Caminho para a ISO do Rock Linux 9.4
  image  = var.rock_linux_iso_path  # Caminho da ISO, vindo do arquivo variables.tf

  # Configuração de rede
  network_adapter {
    type = "nat"  # Tipo de rede NAT
  }

  # Provisionador para copiar o script de instalação automática para a VM
  provisioner "file" {
    source      = "auto_install.sh"   # O script será enviado para a VM
    destination = "/tmp/auto_install.sh"
  }

  # Provisionador para executar o script de instalação
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/auto_install.sh",
      "/tmp/auto_install.sh"
    ]
  }
}
