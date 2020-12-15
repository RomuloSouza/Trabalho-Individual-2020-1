[![Build Status](https://travis-ci.com/RomuloSouza/Trabalho-Individual-2020-1.svg?branch=master)](https://travis-ci.com/RomuloSouza/Trabalho-Individual-2020-1)
<a href="https://codeclimate.com/github/RomuloSouza/Trabalho-Individual-2020-1/maintainability"><img src="https://api.codeclimate.com/v1/badges/8665dd0a5ec7338ea3e1/maintainability" /></a>
<a href="https://codeclimate.com/github/RomuloSouza/Trabalho-Individual-2020-1/test_coverage"><img src="https://api.codeclimate.com/v1/badges/8665dd0a5ec7338ea3e1/test_coverage" /></a>

# Solução Trabalho Individual GCES

## Pré-requisitos
* Docker versão 17.04.0+
* Docker Compose com sintaxe na versão 3.2+

## Containerização

### Backend

* Foi criado um Dockerfile em `./api/`, utilizando a imagem ruby:2.5.7
* Foi criado um ENTRYPOINT para executar as migrações e subir o serviço

### Frontend

* Foi criado um Dockerfile em `./client/`, utilizando a imagem node:14.15.1
* Foi criado um CMD para subir o serviço

### Docker-compose

* Foi criado um arquivo docker-compose yml para subir os 3 containeres do projeto: api, front, db(utiliza a imagem postgresql).
* No compose são declaradas as variáveis de ambiente, mapeadas portas e feito binds nos volumes.

## Executando projeto

```bash
$ docker-compose up
```

## Executando os testes

Com os containers up, execute os seguintes comando para rodar os testes
 
```bash
# Backend
$ docker-compose exec api bundle exec rails test

# Frontend
$ docker-compose exec front yarn run test:unit
```

## Integração Contínua

Para realizar a integração contínua, foi utilizado o Travis CI. Dentro do CI, são instaladas as ferramentas necessárias, realizado o build da aplicação e rodados os testes.

### Coleta de métricas

Para a coleta de métricas de qualidade, foi utilizado o Code Climate.

### Cobertura de testes

Após a realização de testes no backend é gerada a pasta `/api/coverage` contendo a cobertura do back (utilizando simplecov).

Após a realização de testes no frontend é gerada a pasta `/client/coverage` contendo a cobertura do front (utilizando lcov).

É realizada a junção dos resultados dos coverage do back e front e o resultado final é enviado para o Code Climate.