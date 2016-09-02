# REST
As fundações de REST O "marco zero" de REST é o recurso. Em REST, tudo é definido em termos de recursos, sendo estes os conjuntos de dados que são trafegados pelo protocolo. Os recursos são representados por URI's. Note que, na web, URI's e URL's são essencial- mente a mesma coisa - razão pela qual vou usar os dois termos neste livro de forma intercalada.

Qual a diferença entre uma URL e uma URI? URL significa Universal Resource Locator e URI, Universal Resource Identifier . Uma URI, como diz o próprio nome, pode ser utilizada para identificar qualquer coisa - dar um caminho para um determinado conteúdo, dar nome a este, etc. Já uma URL pode ser utilizada apenas para fornecer caminhos - sendo que uma URL é, portanto, uma forma de uma URI. É mais natural que URI's que não sejam URL's sejam utilizadas em outros contextos, como fornecimento de namespaces XML.

Tomando como exemplo o caso da listagem de clientes, é possível decompôr a URL utilizada para localização da listagem em várias partes: [http://localhost:8080/cervejaria/clientes](http://localhost:8080/cervejaria/clientes) • http:// - Indica o protocolo que está sendo utilizado (no caso, HTTP); • localhost:8080 - Indica o servidor de rede que está sendo utilizado e a porta (quando a porta não é especificada, assume-se que é a padrão - no caso do protocolo HTTP, 80); • cervejaria - Indica o contexto da aplicação, ou seja, a raiz pela qual a aplicação está sendo fornecida para o cliente. Vou me referir a esta, daqui em diante, como contexto da aplicação ou apenas contexto; • clientes - É o endereço, de fato, do recurso - no caso, a listagem de clientes. Vou me referir a este, daqui em diante, como endereço do recurso.

# Referências:

## RESTful

- [REST Design Pattern](https://dzone.com/articles/common-rest-design-pattern)


- [REST Anti Patterns](http://www.infoq.com/articles/rest-anti-patterns)


- [Especificação HTTP 1.1](http://www.w3.org/Protocols/rfc2616/rfc2616.html)


- [REST API Design - Resource Modeling](https://www.thoughtworks.com/insights/blog/rest-api-design-resource-modeling)
