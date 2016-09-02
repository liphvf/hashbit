# Guia Git

![git image atlassian](https://www.atlassian.com/git/images/atlassian-getting-git-right.jpg)

O git funciona de forma semelhante a qual quer sistema de versionamento (Mercurial, Bazaar, Subversion). Tendo como ideia chave manter o código versionado ou seja, podemos ver qual quer alteração e voltar no tempo da mesma.


- [Configurando o Git](https://git-scm.com/book/pt-br/v1/Primeiros-passos-Configura%C3%A7%C3%A3o-Inicial-do-Git)

#Uma Breve História do Git
Assim como muitas coisas boas na vida, o Git começou com um tanto de destruição criativa e
controvérsia acirrada. O kernel (núcleo) do Linux é um projeto de software de código aberto de
escopo razoavelmente grande. Durante a maior parte do período de manutenção do kernel do
Linux(1991-2002),asmudançasnosoftwareeramrepassadascomopatchesearquivoscompactados.
Em 2002, o projeto do kernel do Linux começou a usar um sistema DVCS proprietário chamado
BitKeeper.

Em 2005,o relacionamento entre a comunidade que desenvolvia o kernel e a empresa que desenvolvia
comercialmente o BitKeeper se desfez,e o status de isento-de-pagamento da ferramenta foi revogado.
Isso levou a comunidade de desenvolvedores do Linux (em particular Linus Torvalds, o criador do
Linux) a desenvolver sua própria ferramenta baseada nas lições que eles aprenderam ao usar o
BitKeeper. Alguns dos objetivos do novo sistema eram:

- Velocidade
- Design simples
- Suporte robusto a desenvolvimento não linear (milhares de branches paralelos)
- Totalmente distribuído
- Capaz de lidar eficientemente com grandes projetos como o kernel do Linux (velocidade e
volume de dados)

Desde sua concepção em 2005, o Git evoluiu e amadureceu a ponto de ser um sistema fácil de
usar e ainda assim mantém essas qualidades iniciais. É incrivelmente rápido, bastante eficiente com
grandes projetos e possui um sistema impressionante de branching para desenvolvimento não-linear

**Para Começar e bom enteder um pouco de como funciona o git, SIM!, Teoria! , O link abaixo tem uma explicação muito boa.**

Um guia prático:

- [Git Practical Guide](http://git.huit.harvard.edu/guide/index.pt_BR.html)
- [The Simple Guide](http://rogerdudler.github.io/git-guide/)
- [WorkFlow cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
- [Github cheatsheet](https://services.github.com/kit/downloads/github-git-cheat-sheet.pdf)


**Agora que sabemos um pouco de teoria vamos praticar um pouco:**

Um bom tutorial é o do github:

- [Github Tutorial](https://try.github.io/)


É Estudante? Pegue seu desconto:

- [Educational Github](https://education.github.com/)

## Snapshot e não diferença:
Cada commit do git representa uma Snapshot de como está nosso código agora. Ele trabalhar com as diferenças de commits que você deu.

## Commit:
Unicidade lógica

## Sim, Ele é Async
Você não precisa se preocupar em está connectado a internet uma vez que o projeto está em sua máquina. Só na hora de atualizar a `remota`.

## Git Tem Integridade

Tudo no Git tem seu checksum (valor para verificação de integridade) calculado antes que seja
armazenado e então passa a ser referenciado pelo checksum. Isso significa que é impossível mudar o
conteúdo de qualquer arquivo ou diretório sem que o Git tenha conhecimento. Essa funcionalidade
é parte fundamental do Git e é integral à sua filosofia. Você não pode perder informação em trânsito
ou ter arquivos corrompidos sem que o Git seja capaz de detectar.

O mecanismo que o Git usa para fazer o checksum é chamado de hash SHA-1, uma string de 40
caracteres composta de caracteres hexadecimais (0-9 e a-f) que é calculado a partir do conteúdo de
um arquivo ou estrutura de um diretório no Git. Um hash SHA-1 parece com algo mais ou menos
assim:
```
1 24b9da6552252987aa493b52f8696cd6d3b00373
```
Você vai encontrar esses hashes em todo canto, uma vez que Git os utiliza tanto. Na verdade, tudo
que o Git armazena é identificado não por nome do arquivomas pelo valor do hash do seu conteúdo.



# Ciclo de Vida:

![lifecycle git](https://git-scm.com/book/en/v2/book/02-git-basics/images/lifecycle.png)

- Untracked: Arquivos novos ou não adicionados
- Unmodified: Arquivos que já foram comitados e não foram modificados
- Modified: Modificado, porem não comitado
- Staged: Colocado a fila de commit. (index)

# Vamos começar a ignorar!

O git nos permite ignorar arquivos para que eles não apareçam na lista de untracked e por consequencia, para não subirmos ele na remota.

no sue projeto, cria-se (ou edita, no caso de já ter) o arquivo `.gitignore` com o que você quer ignorar, exemplo:

```
*.[oa]
*~
```
A primeira linha fala para o Git ignorar qualquer arquivo finalizado em `.o` ou `.a` e a segunda todos os arquivos que terminam com um til `~`.


# Fetch Vs Pull de Seus Remotos:



# Inciando Projetos:

## Git global setup

```
git config --global user.name "<NOME DO USUARIO>"
git config --global user.email "<E-MAIL>"
```

## Create a new repository

```
git clone <repostorio.git>
cd <pasta do projeto>
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master
```

## Existing folder or Git repository

```
cd existing_folder
git init
git remote add origin <repostorio.git>
git add .
git commit
git push -u origin master
```

## git clean:
[stackoverflow](http://stackoverflow.com/questions/61212/how-do-i-remove-local-untracked-files-from-my-current-git-branch)

## Referências:
- [Git SCM DOCS](http://git-scm.com/documentation)
- [Git Ready](http://gitready.com/)


# Atalhos:
adicona as modificações e commita: `git commit -a -m "messagem"`


## Remover todos os arquivos do mesmo tipo do git
- `git rm *.pyc` `git rm -f *.pc=yc`
- `git commit -a -m 'All pyc files removed  '`
- `git push`

## Amending the commit message(editar comentário)
- `git commit --amend`
- `git commit --amend -m "new comment"`

## Git tag:
### Renomear tag:
- `git tag <new tag> <old tag>`
- `git push --tags`

### Deletar tag antiga do remoto:
- Remoto: `git push origin :refs/tags/<old tag>`
- Local: `git tag -d <old tag>`

## Git branch
### Deletar branch
- Local: `git branch -d <nome da branch>`
- Remoto: `git push origin :<remote branch>`
- Syncronisar branch list: `git fetch -p`

## Git stash:
Serve para guardar um alteração feita em um branch, e depois movela
- `git stash`
- `git checkout <branch correta>`
- `git stash pop`


# Referências:
1. Livro Pro-Git



# Gerado de gitignore

- [.gitignore Generator](https://www.gitignore.io/)

# Sugestão de Tags:

- `#Fix` : Correção de erros que não são bugs.
- `#BugFix` : Correção de Bug.
- `#Feacture` : Adição de Feactures.
