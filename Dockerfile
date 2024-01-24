# Use a imagem oficial do PostgreSQL
FROM postgres:16.1

# Defina o mantenedor
LABEL maintainer="JoaoPedroMattosLott"

# Atualize o apt-get
RUN apt-get update

# Instale o PostGIS
RUN apt-get install -y postgis postgresql-13-postgis-3

# Copie o script de inicialização para o diretório docker-entrypoint-initdb.d para que ele seja executado na inicialização
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/

# Exponha a porta padrão do PostgreSQL
EXPOSE 5432