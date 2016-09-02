# ZSH
the new bash way. =)

# For install:
Para saber seu terminal padrão: `echo $SHELL`
1. `pacman -S zsh` ou `apt-get install zsh`
2. Rode a primeira vez para ele criar o `.zshrc` na sua pasta `home`
3. Verify installation by running `zsh --version`. Expected result: `zsh 5.0.5` or more recent.
4. Make it your default shell: `chsh -s $(which zsh)`
  - Note that this will not work if Zsh is not in your authorized shells list (/etc/shells) or if you don't have permission to use `chsh`. If that's the case you'll need to use a different procedure.

# Oh-My-Zsh:
![Oh-My-Zsh](http://ohmyz.sh/img/OMZLogo_BnW.png)
- [Oh-My-Zsh](http://ohmyz.sh/)
- [Oh-My-Zsh Docs](https://github.com/robbyrussell/oh-my-zsh/wiki)
- [Arch Linux Zsh](https://wiki.archlinux.org/index.php/Zsh)
- [Oh-My-Zsh Github](https://github.com/robbyrussell/oh-my-zsh)
- [Lista com todos os themes](http://zshthem.es/all/)
- [Oh-My-Zsh Themes inclusos](https://github.com/robbyrussell/oh-my-zsh/wiki/themes)
- [Oh-My-Zsh Themes](https://github.com/robbyrussell/oh-my-zsh/wiki/External-themes)
- [Oh-My-Zsh Custom, plugin, themas](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization)
- [Oh-My-Zsh Troubleshooting](https://github.com/robbyrussell/oh-my-zsh/wiki/Troubleshooting)
- [Artigos](http://dougblack.io/words/zsh-vi-mode.html)

![Oh-My-Zsh](http://ohmyz.sh/img/themes/nebirhos.jpg)


## Install Oh-My-Zsh:
- Por garantia, tenha o `sudo` instalado e abra um terminal na pasta home do seu usuário depois é só seguir o github do Oh-My-Zsh para install via `curl` ou `sh`.

### Custom .zshrc:
No arquivo `.zshrc` presente na sua home, você pode configurar os plugins, themes...

#### Plugin:
Só adicione na parte de plugin o que você quer usar:`plugins=(git git-flow-avh docker docker-compose archlinux postgres python rsync zsh_reload aws zsh-navigation-tools npm)`

#### Themes:
Para mudar o themes que estão inclusos é só mudar o nome do thema: `ZSH_THEME="agnoster"`

![agnoster](https://cloud.githubusercontent.com/assets/2618447/6316862/70f58fb6-ba03-11e4-82c9-c083bf9a6574.png)

No caso do `agnoster`, ele tem a dependencia do powerline fonts, é só clonar e rodar o ./install.sh
[Powerline Fonts](https://github.com/powerline/fonts)

Para usuários simplistas recomendo o thema, `ZSH_THEME="gentoo"`, por não precisar instalar nenhum dependencia.

### Funcionando no root:
Para fazer funcionar no root copie a pasta `.oh-my-zsh` e o arquivo `.zshrc` da sua `home` para a pasta `/root`.

## Custom Prompt:
Como é exibido o terminal, no caso `usuário@nome_da_maquina: `, isso pode ser customizado. Alguns links abaixos explicam melhor:

- [Arch Linux Prompt Docs](https://wiki.archlinux.org/index.php/zsh#Customizing_the_prompt)
- [prompt](http://www.nparikh.org/unix/prompt.php)
- [Ubuntu Ask](http://askubuntu.com/questions/483797/enable-zsh-prompt-username)



# Problemas com scp e rsync usando (pasta/caminho/*.) caracter de expansão:

- [Solução](https://github.com/sorin-ionescu/prezto/issues/232)

Adicione no zshrc:

```
alias rsync='noglob rsync'
alias scp='noglob scp'
```
