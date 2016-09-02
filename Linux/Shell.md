# Shell

- [10 Tools To Add Some Spice To Your UNIX Shell Scripts](http://www.cyberciti.biz/tips/spice-up-your-unix-linux-shell-scripts.html)
- [Curso shell](http://www.linuxmagazine.com.br/lm/noticia/baixe_o_curso_de_shell_script_do_julio_cezar_neves)
- [softwarelivre](http://wiki.softwarelivre.org/bin/view/TWikiBar/WebHome)
- [Shell Script Profissional](http://aurelio.net/shell/canivete/)


# Boas Práticas

- Cabeçalho inicial com uma explicação geral do  funcionamento
    - Coloque aqui informações sobre seu programa, do que ele se trata, o que ele faz, como ele faz.(Coloque principamente as informações que você gostaria de ler)
    - [Veja um exemplo:](https://github.com/aureliojargas/livro-shell/blob/master/02-qualidade/exemplo-cabecalho.sh)
        - Localização (path) do interpretador
        - Nome do progrmaa
        - Descrição breve do propósito
        - Site do programa (se aplicável)
        - Nome do autor
        - E-mail do autor
        - Nome e e-mail do responsável pela manutenção (caso diferente do autor)
        - Descrição detalhada do funcionamento
        - Data de criação
        - Histórico de mudanças (data, nome, descrição).
        - Licença (copyright)

- Código alinhado (indent) e bem-espagado verticalmente
- Comentários explicativos e esclarecedores
- Nomes descritivos para funções e variáveis.
- Controle de alterações e versões.
- Estrutura interna coesa e padronizada.

Além disso, um programa ainda pode ter extras para tornalo mais Profissional.

- Manual de use.
- Manual técnico.
- Suite de testes.
- Registro histórico das mudanças (Changclog).
- Base de problemas conhecidos.
- Versões beta.
- Arquivos de exemplo de comportamento (se aplicável)

**WARNING:** Se um dia esquecer disso, releia o 2ª capítulo do livro Shell Script Profissional


## Diferença entre aspas simples e duplas:

```
#!/bin/bash
echo 'Com aspas simples:'
echo 'There is no * in my path: $PATH'

echo "Com aspas duplas:"
echo "There is no * in my path: $PATH"
```

No caso da dupla, ela irá substituir a variável $PATH pelo valor dela.
