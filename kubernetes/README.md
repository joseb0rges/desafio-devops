# Desafio 02: Kubernetes

## Motivação

Kubernetes atualmente é a principal ferramenta de orquestração e _deployment_ de _containers_ utilizado no mundo, práticamente tornando-se um padrão para abstração de recursos de infraestrutura. 

## Objetivo
Dentro deste repositório existe um subdiretório **App** e um **Dockerfile** que constrói essa imagem, seu objetivo é:

- Construir a imagem docker da aplicação
- Criar os manifestos de recursos kubernetes para rodar a aplicação (_deployments, services, ingresses, configmap_ e qualquer outro que você considere necessário)
- Criar um _script_ para a execução do _deploy_ em uma única execução.
- A aplicação deve ter seu _deploy_ realizado com uma única linha de comando em um cluster kubernetes **local**
- Todos os _pods_ devem estar rodando
- A aplicação deve responder à uma URL específica configurada no _ingress_


## Extras 
- Utilizar Helm [HELM](https://helm.sh)
- Divisão de recursos por _namespaces_
- Utilização de _health check_ na aplicação
- Fazer com que a aplicação exiba seu nome ao invés de **"Olá, candidato"**

## Notas

* Pode se utilizar o [Minikube](https://github.com/kubernetes/minikube) ou [Docker for Mac/Windows](https://docs.docker.com/docker-for-mac/) para execução do desafio e realização de testes.

* Não é necessário realizar o _upload_ da imagem Docker para um registro público, você pode construir a imagem localmente e utilizá-la diretamente.


## Detalhamento da implementação 

* Foi ultilizado minikube, segue abaixo as etapas para implentação

1 - Crie repositorio no dockerhub e realize o login no seu repo : **docker login**

2 - Execute o script para deploy da aplicação: bash deploy.sh

3 - Apos o deploy, verifique se os pods estão de pé: **kubectl get pods -n dev**

Obs.: Verifique se o **helm** está instalado em seu script. Essa implementação foi usado o sistema operacional Linux.