# Docker

# Introdução A Docker:

<figure class="swipe"><iframe src="https://www.swipe.to/embed/4721cs" allowfullscreen></iframe></figure><style>figure.swipe{display:block;position:relative;padding-bottom:56.25%;height:0;overflow:hidden;}figure.swipe iframe{position:absolute;top:0;left:0;width:100%;height:100%;border:none;}</style>

## Algumas Funções Básicas:


Para todos os comandos úteis, entre em [github.com/wsargent/docker-cheat-sheet](https://github.com/wsargent/docker-cheat-sheet)

| Função                                    | Comando                                  |
|:------------------------------------------|:-----------------------------------------|
| Levantar o Servidor                       | `sudo docker -d`                         |
| Listar Container rododando                | `docker ps`                              |
| Litar todos os container                  | `docker ps --all`                        |
| Star and Stop                             | `docker [start ou stop] [ID ou Nome]`    |
| Procurar imagem                           | `docker search [nome da imagem]`         |
| Baixar imagem                             | `docker pull [nome da imagem]`           |
| Listar images                             | `docker images`                          |
| Rodar terminal de um container            | `docker run -it debian bash`             |
| Rodar Container in backgroud              | `docker run -d [container]`              |
| Log do terminal                           | `docker logs [ID ou nome]`               |
| Expor Portas                              | `docker run -d -P [ID ou nome]`          |
| Executar comandos em container já rodando | `docker exec -it ID_DO_DOCKER /bin/bash` |
| Remover container                         | `docker rm [ID ou NOME]`                 |
| Romover Imagem                            | `docker rmi [ID ou NOME:tag]`            |


## Dicas de uso:

- Quando estiver no temrinar interativo(`run -it bash`), para sair sem parar a aplicação basta usar `CTRL + P + Q`

- Após instalar o docker, para você não precisar colocar o `sudo` na frente de todo comando docker, e só você adicionar o seu usuário ao grupo do docker no sistema linux: `sudo usermod -aG docker [nome_do_seu_usuario]`

- Para limpar todos as imagems ou cotainer poderia usar esses comandos abaixo:
    - Delete all containers: `docker rm $(docker ps -a -q)`
    - Delete all images: `docker rmi $(docker images -q)`

- Rodar o docker-compose em maquina que só tem o docker(usando do docker-compose container):

```
alias docker-compose='docker run -v "$(pwd)":/app -v /var/run/docker.sock:/var/run/docker.sock -e COMPOSE_PROJECT_NAME=$(basename "$(pwd)") -ti --rm dduportal/docker-compose:latest'
```

## Dockerfile:

O arquivo dockerfile serve para criar uma build de uma imagem. Tendo escrito um arquivo dockerfile basta rodar o comando `docker build [caminho do arquivo dockerfile]`


Todos os comandos dele estão presente no [Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet#dockerfile).

Exemplo de dockerfile
```
FROM [Imagem:tag]
RUN ....
```
### RUN vs CMD:

- RUN : Executa o commando antes do commit(antes de finalizar a imagem)
- CMD : Executa o comando na hora que você instancia sua imagem(na hora de rodar o container)

O RUN, executa comandos para configurar uma imagem que será criado, enquanto o CMD executa um comando ao iniciar essa imagem (ao instanciar um container). No exemplo abaixo temos o comando ping, que ao criar um container (`docker run imagem`), ele automaticamente executará o ping, pois em seu dockerfile está escrito `CMD ping [IP]`. Caso passe um argumento diferente do `CMD` escrito na imagem atravez do dockerfile, ele irá sobre-escrever o `CMD` executando o novo comando: `docker run imagem echo "helloword"`.

Existem 2 formas de escrever o comando `CMD`:

- Shell format: (não aceita argumentos em tempo de execução)
`CMD ping 127.0.0.1 -c 30`

- Exec format:
`CMD ["ping", "127.0.0.1", "-c", "30 "]`


### ENTRYPOINT:
Diferente do CMD que é um comando programado, o ENTRYPOINT, você define um comando e na hora da execução você passa os paramentos, com isso tempos um docker com um comando que será inicializado junto com ele e podemos passar paramentros. Exemplo:

`ENTRYPOINT ["ping"]`

Ao executar, eu preciso definir a quem o ping irá pingar. `docker run imagem www.google.com.br`


# References:
- [Trainamento Docker em video](https://training.docker.com/self-paced-training)
- [Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet)
- [imasters entenda como funciona o docker/](http://imasters.com.br/infra/linux/baleias-na-nuvem-entenda-como-funciona-o-docker/)
- [Instalar o Dcoker](https://docs.docker.com/installation/)
- [Docker-tutorial-mao-na-massa/](http://www.ricardomartins.com.br/docker-tutorial-mao-na-massa/)
- [deploys-leves-e-rapidos-com-docker](http://blog.andrefaria.com/deploys-leves-e-rapidos-com-docker)
- [Docker Hub](https://hub.docker.com/)
- [Docker-Compose Workflow](https://blog.codeship.com/orchestrate-containers-for-development-with-docker-compose/)

## DockerCon
[Dockercon EU 2015](https://www.youtube.com/playlist?list=PLkA60AVN3hh87OoVra6MHf2L4UR9xwJkv&mkt_tok=3RkMMJWWfF9wsRonuqTMZKXonjHpfsX56OooXKCxlMI%2F0ER3fOvrPUfGjI4DTMtrI%2BSLDwEYGJlv6SgFQ7LMMaZq1rgMXBk%3D)

## The Future:

- [Universal Control Plane](http://www.docker.com/universal-control-plane)

## Docker Swarm
O Docker Swarm serve para custerização de docker-machines.

Links:
- [Docker Swarm Docs](https://docs.docker.com/swarm/)
- [Docker Swarm github](https://github.com/docker/swarm)

## Projetos interessantes

### Deploy

- [Deploy Bot](http://deploybot.com/)
- [Clusterup](https://clusterup.io)
- [Runnable](https://runnable.io/)

### GUI
- [Docker Registry UI](https://github.com/atc-/docker-registry-ui)
- [Docker Registry Frontend](https://github.com/kwk/docker-registry-frontend)
- [Docker Compose UI](https://hub.docker.com/r/francescou/docker-compose-ui/)
- [Vamp](http://vamp.io/)


## Syntax Validator

- [Lorry](https://lorry.io/)


## Artigos

- [Docker Hub Reaches Over 1.2 Billion Pulls](http://blog.docker.com/2015/11/docker-hub-billion-pulls/)
- [Conteinerização de PostgreSQL com Docker](http://infoslack.com/linux/conteinerizacao-de-postgresql-com-docker/)
- [Docker Networking: Reborn](http://www.container42.com/2015/10/30/docker-networking-reborn/)
- [Docker Casos de uso](https://www.docker.com/products/use-cases?mkt_tok=3RkMMJWWfF9wsRonuqTMZKXonjHpfsX56OooXKCxlMI%2F0ER3fOvrPUfGjI4DTcNkI%2BSLDwEYGJlv6SgFQ7LMMaZq1rgMXBk%3D)

## Python with docker
[![IMAGE ALT TEXT](http://img.youtube.com/vi/WRJDGo0HWng/0.jpg)](http://www.youtube.com/watch?v=WRJDGo0HWng "Video Title")
[![IMAGE ALT TEXT](http://img.youtube.com/vi/eC960QccAbU/0.jpg)](http://www.youtube.com/watch?v=eC960QccAbU "Video Title")

## O que não fazer com Docker:
[![IMAGE ALT TEXT](http://img.youtube.com/vi/LZgJnaP4TKE/0.jpg)](http://www.youtube.com/watch?v=LZgJnaP4TKE "Video Title")


- [Entendendo armazenamento de dados no Docker](http://techfree.com.br/2015/12/entendendo-armazenamentos-de-dados-no-docker/)
- [Entendendo a rede do Docker](http://techfree.com.br/2016/02/entendendo-a-rede-do-docker/)


# Outros Links:
-- https://imagelayers.io/