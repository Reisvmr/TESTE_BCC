terraform {
  required_providers {
    virtualbox = {
      source  = "shekeriev/virtualbox"
      
    }
  }
}

provider "virtualbox" {
  # Nenhuma configuração adicional necessária
}
