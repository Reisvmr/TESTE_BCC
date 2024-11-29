#!/bin/bash
# auto_install.sh

# Atualizar pacotes do sistema
sudo dnf update -y

# Instalar pacotes básicos
sudo dnf install -y @core

# Outras configurações ou pacotes adicionais podem ser adicionados aqui
echo "Instalação básica concluída!"
