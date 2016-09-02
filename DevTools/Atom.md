# Ultima versão do atom:
Nós links abaixo você pode manter-se atualizado sobre o atom.io
- [Atom Github](https://github.com/atom/atom/releases/latest)
- [Releses Notes](https://atom.io/releases)

# Lista de plugins:
- [Atom Perfil](https://atom.io/users/liphvf/stars)

## Para Instalar pacotes que foram colocados com strelas:
- Loge no seu perfil do atom pelo terminal: `apm login`
- Aperte `ENTER` e copio o token para o terminal
- Na maquina onde você tem o atom, você poderá dar estrelas as todos os pacotes instalados: `apm star --installed`
- Depois em outro maquina que você deseja instalar, basta executa o login e rodar esté comando: `apm stars --install`

## Themas:
- [Seti Ui](https://atom.io/packages/seti-ui)
- [Seti Syntax](https://atom.io/themes/seti-syntax)
- [seti-icons](https://atom.io/packages/seti-icons)
- [monokai](https://atom.io/themes/monokai)

## Packages:
### Markdown:
- [markdown-scroll-sync](https://atom.io/packages/markdown-scroll-sync) : Syncronica a prévia com o código.
- [markdown-toc](https://atom.io/packages/markdown-toc) : cria um menu

Lembrando que o atom-beautify, formata tabela, também.

### Formata, Verifica, Autocompleta, Linter:
- [atom-beautify](https://atom.io/packages/atom-beautify) : formata tudo que é tipo de arquivo.
- [autocomplete-python](https://atom.io/packages/autocomplete-python)
- [linter](https://atom.io/packages/linter) : linter base, apartir dele você instala addons para o link que quiser
- [linter-flake8](https://atom.io/packages/linter-flake8) : Addon do linter para python.
- [minimap](https://atom.io/packages/minimap) : adiciona um minimap na lateral
- [autoclose-html](https://atom.io/packages/autoclose-html) : fecha as tags html
- [color-picker](https://atom.io/packages/color-picker) : abre uma paleta de cores
- [highlight-selected](https://atom.io/packages/highlight-selected) : ao selecionar uma palavra, ele seleciona faz highlight de todas iguais.
- [open-in-browser](https://atom.io/packages/open-in-browser) : abre página no browser
- [atom-terminal](https://atom.io/packages/atom-terminal) : abre terminal na raiz

### Git:
- [git-plus](https://atom.io/packages/git-plus) : tras todas as funcionalidade de git
- [merge-conflicts](https://atom.io/packages/merge-conflicts) : mostra os conflutos de merge
- [git-diff-details](https://atom.io/packages/git-diff-details) : mostra diferenças

### Good Future:
- [git-control](https://atom.io/packages/git-control)
- [git-log](https://atom.io/packages/git-log) : Desabilitador por mim, pois contem um bug na hora de fechar a aba
- [simple-flake8](https://atom.io/packages/simple-flake8) : com a ideia de não poluir, faz a mesma coisa do linter-flake8
- [autocomplete-plus-python-jedi](https://atom.io/packages/autocomplete-plus-python-jedi) : parei de usar devido a um bug

# Python Autocomplete, Autoformat e Linters(Corretor de código) (Linter-flake8):
**Para instalar o autocomplete, basta:** `sudo pip install jedi` or `sudo apt-get install python3-jedi`(isso com o plugin autocomplete-plus-python-jedi instalado)

**Python auto format**: `sudo pip install pep8 autopep8`

**Linter:**
1. Primeiro precisa baixar o [linter](https://atom.io/packages/linter), Pacote padrão do atom.
2. Apartir dele escolha o [plugin para o linter](http://atomlinter.github.io/) da linguagem que você precisa.
3. Para tirar o máximo do flake8: `sudo pip3 install flake8 flake8-pep257 hacking`

[Plugin Flake8](https://atom.io/packages/linter-flake8)

# Criar ShortCuts
New Version:

```
'atom-text-editor':
   'ctrl-shift-alt-x':'editor:split-selections-into-lines'
```

Old Version:

```
'.platform-win32 .editor, .platform-linux .editor':
  'ctrl-shift-L': 'editor:split-selections-into-lines'
  'ctrl-alt-up': 'editor:add-selection-above'
  'ctrl-alt-down': 'editor:add-selection-below'
```

# Commandos Uteis:
- Converter tab to spaces, spaces to tab -> `Ctrl + Shift + P` > `whitespace:`

# Backup do Atom:
A pasta `~/.atom` tem todas as configurações, as mais importantes são:
- ~/.atom/styless.less : Custom Styles
- ~/.atom/keymap.cson : Custom keymaps
- ~/.atom/config.cson : General Settings
- ~/.atom/packages : plugins.

# Referências:
[MultiLines](https://github.com/atom/atom/issues/1365)
