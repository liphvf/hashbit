# screenfetch, uma maneira manera de mostra o seu terminal.
`pacman -S screenfetch && screenfetch`

- [Display Awesome Linux Logo With Basic Hardware Info Using screenfetch and linux_logo Tools](http://www.cyberciti.biz/hardware/howto-display-linux-logo-in-bash-terminal-using-screenfetch-linux_logo/)

# Criando arquivos .sh(scripts)

```
#!/bin/sh

Comandos abaixo do cabeçalho
```

## Criando Script com Systemed or sysmtemctl(How can I make a script start during the boot process?)
- Create a new file in /etc/systemd/system (e.g. myscript.service) and add the following contents:

```
[Unit]
Description=My script

[Service]
ExecStart=/usr/bin/my-script

[Install]
WantedBy=multi-user.target
```

- Then: `$ systemctl enable myscript.service`
- OBSERVATION: Lembre de dar permissão de execução chmod 755

# Setup OPENSSH
**ON Terminal:**

`$ ssh-keygen`
- Aceite o local padrão ou defina um > Cria uma passphrase > será criado id_rsa id_rsa.pub

**Após instalado:**
- `cat ~/.ssh/id_rsa.pub` copie no bitbucket (Procure por ssh key)

**Verificar se deu certo**

`$ ssh -T git@bitbucket.org`

[Dúvidas](https://confluence.atlassian.com/display/BITBUCKET/Set+up+SSH+for+Git)

# Listar Arquivos
- lista sem muita frescura `$ ls -R`
- lista com tudo `$ ls -la -R`
- lista tudo, recursivamente, com tamanho, no formato humano`$ ls -LRsh`

## Trabalhando com programas em segundo plano:
- dentro de um programa se você digitar Ctrl+Z, ele é colocado em segundo plano(note que ele pode acabar parando para ser colocado em segundo plano)
- outra maneira é digite o comando e adicionar `&`, exemplo: `vi &`
- outra maneira é o `bg`
- Para listar quem está em segundo plano usamos: `jobs -l`
- para resgatar o programa usamos o `fg` exemplos `fg 1` ou `fg vi`

[Referência](http://www.vivaolinux.com.br/artigo/Criando-monitorando-e-terminando-processos?pagina=5)

## Terminator With Thunar
Editr>Configure custom actions>add a new custom>
- Na aba command coloque: `terminator --working-directory %f`
- Appearance Conditions: selecione **Directories**

## Atualizar o grub para indentificar o windows:
Se não colocar o /dev/sdx ele procura no hd inteiro
- `sudo update-grub`
- `sudo grub-install /dev/sdx`

## Criando Copia MicroSD:
Lembre de desmontar o disco:

`sudo dd if=/dev/NOME_DO_DISPOSITIVO of=~/raspi.img` `sudo dd if=~/raspi.img of=/dev/NOME_DO_DISPOSITIVO`

## Como Achar minha versão do linux e kernel:
![find-kernel](http://s0.cyberciti.org/images/faq/2013/07/linux-distro-version.gif)


## Bom Estudo
- [ShellScript](http://www.devin.com.br/shell_script/)
- [Executar Comandos concatenados](http://maguscode.blogspot.com.br/2013/05/como-executar-varios-comandos-em.html)
- [scp](http://www.hypexr.org/linux_scp_help.php)
- [Extair](http://www.vivaolinux.com.br/dica/Como-descompactar-arquivos-zip-rar-tar.gz-tar.bz2-pelo-terminal)
- [Curl](https://juliocsm.wordpress.com/2013/03/20/6-comandos-do-curl-para-usar-no-dia-dia/)
- [Change Password](http://www.cyberciti.biz/faq/linux-change-password/)
- [Linux Envariment](http://www.cyberciti.biz/faq/set-environment-variable-linux/)
- [Achar distribuição linux e kernel](http://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/)
