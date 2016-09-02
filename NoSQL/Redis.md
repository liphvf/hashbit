# Redis
Cada base de dados no redis é representada por um número (por default 0), para selecionar outra database simplesmente use `SELECT [database_number]`
- [Redis para iniciante](http://www.infoq.com/br/presentations/redis-para-iniciantes)
- [Escalando Aplicação Usando Redis](https://www.youtube.com/watch?v=58tazVSghA8)

SET ultimo_usuario_logado 'bruce' `OK` GET ultimo_usuario_logado `bruce` DEL ultimo_usuario_logado `(integer 1)`

Como vimos no capítulo 1, o Redis armazena os dados na forma de chave- valor, mas um ponto interessante sobre a estrutura de dados do Redis é que o valor contido na chave de um registro suporta diferentes formatos que podem ser strings, hashes, lists, sets e sets ordenados.

O Redis é um servidor TCP que faz uso do modelo cliente-servidor [11].

Limpar a base:
- `FLUSHALL` limpa todos os bancos do redis
- `FLUSHDB` limpa a database que está selecionada atualmente

[https://www.magentobr.com/blog/2014/04/24/utilizando-redis-com-magento-1-8/#.VSV9wPZXbeR](https://www.magentobr.com/blog/2014/04/24/utilizando-redis-com-magento-1-8/#.VSV9wPZXbeR)

[http://manifesto.blog.br/2.0/nosql/redis-nosql](http://manifesto.blog.br/2.0/nosql/redis-nosql)

[http://www.linhadecodigo.com.br/artigo/3586/como-fazer-insercoes-no-redis-usando-o-python.aspx](http://www.linhadecodigo.com.br/artigo/3586/como-fazer-insercoes-no-redis-usando-o-python.aspx)

[https://github.com/rediscookbook/rediscookbook](https://github.com/rediscookbook/rediscookbook) [http://www.rediscookbook.org/index.html](http://www.rediscookbook.org/index.html)

[https://matt.sh/redis-json](https://matt.sh/redis-json) [https://developer.mozilla.org/en-US/docs/Mozilla/Redis_Tips](https://developer.mozilla.org/en-US/docs/Mozilla/Redis_Tips)

[http://redis.io/topics/data-types-intro](http://redis.io/topics/data-types-intro)

[https://redislabs.com/blog/5-key-takeaways-for-developing-with-redis#.VSWCmPZXbeQ](https://redislabs.com/blog/5-key-takeaways-for-developing-with-redis#.VSWCmPZXbeQ)
