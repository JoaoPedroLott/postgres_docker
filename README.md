# Projeto PostgreSQL com PostGIS Docker

Este repositório contém um projeto Docker para criar uma imagem do [PostgreSQL](https://www.postgresql.org/) com a extensão [PostGIS](https://postgis.net/). Utilizamos um Dockerfile para construir a imagem e um docker-compose para facilitar a execução do contêiner.

## Pré-requisitos

Certifique-se de ter o Docker instalado em sua máquina antes de começar.

- Docker: [Instalação do Docker](https://docs.docker.com/get-docker/)

## Como usar

1. Clone este repositório em sua máquina local:

```bash
git clone https://github.com/JoaoPedroLott/postgres_docker.git
```

2. Crie um arquivo .env com as variáveis de ambiente necessárias para seu projeto:

```bash
POSTGRES_USER=usuario
POSTGRES_DB=banco_de_dados
POSTGRES_PASSWORD=senha
```

3. Crie a imagem do PostgreSQL com PostGIS usando o Dockerfile:

```bash
docker build -t postgres_postgis_16 .
```

4. Inicie o contêiner usando o docker-compose:

```bash
docker-compose up
```

O PostgreSQL estará acessível na porta 5432 do seu localhost.

## Configuração Adicional
- O diretório ./data é usado para persistir os dados do banco de dados. Você pode alterar isso no arquivo docker-compose.yml se necessário.
- Certifique-se de revisar e personalizar o Dockerfile e o docker-compose.yml para atender aos requisitos específicos do seu projeto.

## Contribuindo
Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novos recursos. Abra uma issue ou envie um pull request!