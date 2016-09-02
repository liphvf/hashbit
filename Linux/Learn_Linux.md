Stream de entrada e Stream de Saida (I/O): pg 30 standard input = stdin standard output = stdout standard error stderr

ls -F (tipo de arquivo)

touch  - cria arquivo (se já existir, atualiza o timestamp

```
echo - Exibe seus argumentos de saida-padrão
```

path absoluto(/usr/lib) e relativo(Download/... não começa com /)

cd sozinho vai para a home

# Globbing no shell (caracteres-curinga)
- `echo *` - Nesse caso ele substitue o * por
- `echo D*`
- `echo *D*`

A espansão é quando a uma subsituição de um valor achado(exemplo de um for each, ele vai de um por um, se algum bater com o parametro informado á uma expansão.)

# Grep
Exibe as linhas de um arquivo ou stream (o | é um tipo de stream?) que coresponda a expressão
- `grep root /etc/passwd` -> Para procurar em 1 arquivo
- `grep root /etc/*` : Procura em todos os arquivos de etc

**Grep Parametros Importantes**

Parametro        | Função
---------------- | -----------------------------------------------------
-i               | SEM Sensitive Case
-v               | inverte a pesquisa, procura pelo o que não é o padrão
grep -E ou egrep | Faz a busca com base uma expressão regular

# Less vs More
O comando less é uma melhoria do comando more, porem em alguns sistemas embarcados ele não é padrão.

Parametro         | Função
----------------- | -------------------------
v                 | Abre o editor padrão
/palavra_a_buscar | mostra em highlight
?palavra_a_buscar | Pesquisa a palavra antes
n                 | mostra a próxima Pesquisa
espace_bar        | muda uma pagina inteira

Exemplos Úteis:
- `grep ie /usr/share/dict/* | less` : o less pega a saida do grep

# PWD
Simplesmente retorna onde você está agora, porem usando a flag `-P` caso a pasta for um link simbolico, ele mostrará o original.

# Diff
Mostra a diferença entre 2 arquivos. o `diff -u` fica mais fácil de compartilhar.

# file
Para saber o tipo do arquivo

# Find vs locate
Find pesquisa nos arquivos e o locate o indice que arquivo que o sistema constroi, caso o arquivo for novo, locate não ira achar.
- `find <dir> -name <arquivo> -print`

# head e tail:
Mostra as primeiras linhas de um arquivo e as finais respectivamente.
- `head -10 <<arquivo>>`: mostras as 10 primeiras linhas
- `tail +5 <<arquivo>>`: mostra as linhas começando da 5ª linha
  - `-` : numero de linhas
  - `+`: começando dessa linha

# sort
Organiza alfabeticamente um texto.

Parametro | Função
--------- | ----------------------
-n        | organiza numericamente
-r        | reverso

# Variável de Shell Vs Variável de Ambiente:
Variáeis de shell não podem ser acessados por programas e vivem na sessão shell em execução.
- `STUFF='qual quer coisa'` : Variável de Shell
- `export STUFF=qual quer coisa de novo`: Variável de Ambiente

Variáveis de ambiente são uteis pois muitos programas as leem para obter cofigurações.

# $PATH
A Variavel de ambiente $path é especial, pois é lá onde todos os comandos do sistema são procurados (`ls`,`echo`...). Você pode adicionar a sua própria pasta de comandos no $PATH mais tenho cuidado, pois o primeiro comando que ele acha é o que vale, então:
- `PATH=nova_pasta:$PATH` : Adicionar antes ou
- `PATH=$PATH:nova_pasta` : Adicionar depois faz diferença

# man vs info
O manual do sistema é seu amigo complicado e chato, mas quem sempre está lá para ajudar.
- `man -k sort` - com isso você está procurando no manuel comando para ordenar ou que tenham a palavra sort.(um dos exemplos de resultado dessa busca é `qsort (3)` esté `(3)` refenrecia a sessão do manual)
- O manual é dividido em sessões:

Seção | Descrição
----- | -----------------------------------------------------------------------------------
1     | Comandos de usuário
2     | Chamadas de sistema
3     | Documentação geral da biblioteca de programção linux
4     | Interface de dispositivos e informações sobre drivers
5     | Descrição de arquivos (arquivos de configuração do sistema)
6     | Jogos
7     | Formatos de arquivo, convenções e condificações (ASCII, sufixos e assim por diante)
8     | Comandos de sistema e servidores

Sendo assim você pode navegar pelas sessões.
- `man 5 passwd` : Você vai ter uma descrição do arquivo
- `man 1 passwd` : Aqui você terá como usar o passwd pelo usuário
- `man passwd` : vem a primeira seção que ele encontra

Normalmente no final ele informa qual outra pagina pode existir

## info

A algum tempo o Projeto GNU decidiu que não gstava muito das páginas do `man`, mudando para o `info`, com frequencia as informações de `info` são mais **completas**, porem em alguns casos mais **complexas**

## Localização:
Normalmente tanto o `man` quanto o `info` deixam seus arquivos em `/usr/share/doc`

# Dicas
- Escolha um bom editor e seja bom nele, ele será seu grande amigo
