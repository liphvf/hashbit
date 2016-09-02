# VIM
Um guia Básico para aprender vim. E ele começa com os 3 modos do vim:
- Modo de comando: este é o modo padrão de quando entramos no VI, é onde podemos usar a maioria dos recursos de edição, como apagar linhas e transitar pelo documento. a maioria dos seus comandos usam apenas um caracter e não precisamos pressionar "enter" para que os comandos sejam executados.
- Modo de inserção: é onde inserimos caracteres no buffer de edição, ou seja: é onde de fato escrevemos. para entrar neste modo, basta pressionar a letra "i" (minúscula) quando estamos no modo de comando, para voltarmos ao modo de comando, basta pressionar "Esc".
- Modo de linha de comando: é onde usamos comandos que requerem argumentos, como inserir o conteúdo de um arquivo de texto ou salvarmos o arquivo dando um nome a ele, ou ainda, quando resolvemos sair sem salvar o documento. para entrar neste modo pressionamos ":" quando estamos no modo de comando, veremos que no canto inferior esquerdo aparece ":" e o cursor fica piscando, esperando que a gente escreva o comando, neste caso, para executar o comando é preciso pressionar "enter"; para voltar ao modo de comando sem ter executado um comando basta pressionar "Esc", se executar um comando, ele volta ao modo de comando sozinho.

## Movimentação do cursor:

| Ação | Efeito   |
|:-----|:---------|
| h    | Esquerda |
| j    | Baixo    |
| k    | Cima     |
| l    | Direita  |

OBS: as setas do teclado também movimentam o cursor

## Comandos de edição:

| Ação     | Efeito                                                         |
|:---------|:---------------------------------------------------------------|
| x        | exclui um caracter                                             |
| dw       | exclui uma palavra                                             |
| dd       | exclui uma linha                                               |
| o        | insere uma linha abaixo do cursor e entra no modo de inserção  |
| O        | insere uma linha acima do cursor e entra no modo de inserção   |
| i        | entra no modo de inserção, permitindo inserir antes do cursor  |
| A        | entra no mode de inserção, permitindo inserir depois do cursor |
| /palavra | procura palavras no buffer de edição                           |
| GG       | move para fim do código                                        |
| gg       | move para o inicio do código                                   |
| u        | desfaz a ultima ação                                           |
| r        | refaz                                                          |

Sobre o modo de inserção não há muito o que explicar, basta escrever normalmente, se precisar apagar algo que foi escrito, basta pressionar Esc para voltar ao modo de comando e usar os comandos como x, dw, dd, etc.

## comandos no modo de linha de comando:
**para ficar mais clara a diferença dos comandos deste modo, colocarei ":" antes de cada comando**
- :w-: salva o arquivo
- :w nome-: nomeia e salva o arquivo
- :q-: sai do VI/VIM
- :wq-: salva o arquivo e sai do editor de textos
- :q!-: sai sem salvar o arquivo, sai forçadamente

O VI e o VIM conseguem juntar uma quantidade gigantesca de recursos dentro de uma interface simples (mas não necessariamente intuitiva), aqui eu mostrei alguns recursos básicos, mas ele tem vários recursos avançados como abrir um arquivo que o texto que você está escrevendo faz referência e compilar o código fonte que você escreveu. para mais informações, consulte a fonte: [http://vimdoc.sourceforge.net/](http://vimdoc.sourceforge.net/)

use :!python % para rodar python fora do vim. Já que o vim não trata input

## Aprenda Jogando:
[http://vim-adventures.com/](http://vim-adventures.com/) [http://www.openvim.com/tutorial.html](http://www.openvim.com/tutorial.html)

## Referências:
[Vundle:](https://github.com/gmarik/Vundle.vim)

[Vundle for windows:](https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows)

**Tutoriais**

[http://tips.webdesign10.com/another-vim-tutorial](http://tips.webdesign10.com/another-vim-tutorial)

[http://www.radford.edu/~mhtay/CPSC120/VIM_Editor_Commands.htm](http://www.radford.edu/~mhtay/CPSC120/VIM_Editor_Commands.htm)
