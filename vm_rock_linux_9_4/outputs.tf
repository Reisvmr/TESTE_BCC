output "vm_ip" {
  description = "Endereço IP da VM"
  value       = virtualbox_vm.rock_linux.network_adapter[0].ipv4_address  # Usar ipv4_address
}
