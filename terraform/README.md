# Desafio 01: Infrastructure-as-code - Terraform

## Motivação

Recursos de infraestrutura em nubvem devem sempre ser criados utilizando gerenciadores de configuração, tais como [Terraform](https://www.terraform.io/) ou [Ansible](https://www.ansible.com/), garantindo que todo recurso possa ser versionado e recriado de forma facilitada.

## Objetivo

- Criar uma instância de máquina virtual Windows no provedor utilizando **Terraform**.
- A instância deve ter aberta somente às portas **80** e **443** para todos os endereços
- A porta RDP (**3359**) deve estar acessível somente para um _range_ IP definido.
- **Inputs:** A execução do projeto deve aceitar dois parâmetros:
  - O IP ou _range_ necessário para a liberação da porta RDP
  - A região da _cloud_ em que será provisionada a instância
- **Outputs:** A execução deve imprimir o IP público da instância

## Extras

- Pré-instalar o SQL Server na máquina virtual.
- Utilização de módulos do Terraform.

## Notas
- Pode se utilizar tanto Azure, como AWS ou GCP (Google Cloud), não é preciso executar o teste em ambas, somente uma.
- Todos os recursos devem ser criados utilizando os créditos gratuitos da Azure/AWS/GCP.
- Não esquecer de destruir os recursos após criação e testes do desafio para não haver cobranças ou esgotamento dos créditos.