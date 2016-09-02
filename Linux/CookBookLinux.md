# Debian Guide

## Update System sem interação [#001]:
Como atualizar os pacotes sem precisar apertar o yes.
1. Acrescente um `-y` no final  `sudo apt-get update && sudo apt-get upgrade -y`

## Administrar pacotes de repositórios diferentes [#002]:

Caso queria uma versão diferente do pacote, presente em outros repo.
1. Primeiro veja quais versões estão disponíveis daquele pacote `aptitude versions redis-server` Ele mostrará os repositórios, suas versões e suas prioridades
- Depois instale do repositório que você quer `sudo apt-get install -t jessie-backports redis-server` , esse **-t** significa **target**.

Referências:
- [Usando backports](https://edpsblog.wordpress.com/2013/12/02/sources-list-para-o-debian-jessietesting-backports/)
- [Debian](http://backports.debian.org/Instructions/)

## Keyboard Configuration [#003]:
1. Para configurar o teclado use o comando: `dpkg-reconfigure keyboard-configuration`
- Escolha seu telcado:
    - Notebook: generic 102 teclas (brazil)
    - PC: generic 105 teclas (brazil)
- Caso não funcione edit o arquivo: `/etc/default/keyboard`:

```
XKBMODEL="abnt2"
XKBLAYOUT="br"
XKBVARIANT=""
XKBOPTIONS="lv3:alt_switch,compose:rctrl"
```

## Xorg Configuration
Caso o Xorg não existe em **/etc/X11**:

Entre como root e saia do terminal gráphico:
1. `Ctrl+Alt+F1`
2. `su`
3. `/etc/init.d/gdm stop && /etc/init.d/gXorg -configuredm3 stop && /etc/init.d/kdm stop && /etc/init.d/xdm stop` só irá existir um desses, no meu caso atual gdm3
4. `cd /etc/X11/`
5. `Xorg -configure`
6. `reboot`

Helps: [Debian Wiki](https://wiki.debian.org/Xorg)

## Remover gnome-games
`sudo apt-get autoremove --purge gnome-games`

Commandos Linux Utils:
- Alguns arquivos no linux podem ser muito grandes para o processamento do pc, exemplos, CSVs, então pegamos as 100 primeiras linhas.

  `head -n 100 arquivo_de_entrada.tsv > arquivo_de_saida2.tsv`

- para ver as ultimas utiliza o tails: `tails -n 100 arquivo`
- Para saber quantas linhas tem em 1 arquivo: `wc -l arquivo.tsv`
- Você pode pesquisar dentro dos comandos que voê já digitou com o comando history: `history`
- pkill mata o programa pelo nome ao invez do pid(código de identificação): `pkill firefox`

# Atualização de Kernel
[Saber a ultima Versão do Kernel](https://www.kernel.org/)
- pre-requisitos a testar: module-init-tools
- Para amd: libgl1-fglrx-glx

**Kernel 4.0.4**:
- Crie uma pasta e vá até ela: `mkdir kernel ; cd kernel`
- Baixe os pacote: `wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.0.4-wily/linux-headers-4.0.4-040004_4.0.4-040004.201505171336_all.deb ; wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.0.4-wily/linux-headers-4.0.4-040004-generic_4.0.4-040004.201505171336_amd64.deb ; wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.0.4-wily/linux-image-4.0.4-040004-generic_4.0.4-040004.201505171336_amd64.deb`
- Instalar: `sudo dpkg -i linux-headers-4.0.4*.deb linux-image-4.0.4*.deb`

Caso tenha alguma problema, desistale: `sudo apt-get remove 'linux-headers-4.0.4*' 'linux-image-4.0.4*'`

# Adicionar Repositórios (Mint):
- Edite o arquivo /etc/apt/sources.list colocando o repositório
- instale o `linuxmint-keyring` caso não tenha no repositório baixa do [site do mint](http://packages.linuxmint.com/list.php?release=Debian), [link direto](http://packages.linuxmint.com/pool/main/l/linuxmint-keyring/)
- use o comando `sudo dpkg -i linuxmint-keyring_2009.04.29_all`
- Caso queira instalar um PPA, use o comando `add-apt-repository ppa:endereço_do_ppa`

# Mudar DNS
Para mudar o DNS podemos editar o arquivo `/etc/resolv.conf`, porem nas ultimas versões do debian quem administra ele é o NetworkManager por isso temos que alterar o NetworkManager para ele gerar esse arquivo.

`nano sudo subl /etc/NetworkManager/system-connections/Wired\ connection\ 1` o arquivo pode mudar de acordo com a interface de rede que queira acessar.

Em IPV4 coloque:

```
[ipv4]
method=auto
dns=208.67.222.222; 208.67.220.220;
ignore-auto-dns=true
```

O caso acima é para o dns do openDNS.

# Criar Desktop Entry, Atalho do aplicativo no gnome3:

```
[Desktop Entry]
Name=BtSync
Comment=Btsync in https://www.getsync.com/
Exec= script para executar
Icon=''
Type=Application
Terminal=false
#X-GNOME-Autostart-enabled=true` --> essa linha iniciaria o programa ao start o programa
```

Salve esse arquivo como `.desktop` em:

`~/.local/share/applications/` ou `/usr/share/applications/`

Apartir dai ele vai aparecer no sistema de busca do gnome

[Gnome Wiki](https://developer.gnome.org/integration-guide/stable/desktop-files.html.en)

# Adicionar ao startup system pelo gnome3
Com o .desktop criado, entre na ferramente gnome-tweak-tool > StartUp Applications> + > selecione o programa desejavel

# Referencia extras
[Novidades do Debian 8](https://www.debian.org/releases/stable/mips/release-notes/ch-whats-new.pt.html)

[Analisar depois](http://askubuntu.com/questions/27362/how-to-only-install-updates-from-a-specific-repository)

# Desabilitar tracker
[ref1](https://forums.opensuse.org/showthread.php/464686-Solved-How-to-disable-tracker-store-processes-that-eat-100-CPU) [ref2](https://wiki.ubuntu.com/Tracker)

# Instalar r8168-dkms(Drive de rede):
Pode acontecer de r8168-dkms do sistema não está atualizado para seu kernel. Nesse caso:
- Pre-requisitos: `sudo apt-get install devscripts debhelper dh-autoreconf linux-headers-generic build-essential dkms`
- Debian: `sudo apt-get install linux-headers-amd64 build-essential dkms`
- [Visite o site da realtek](http://www.realtek.com.tw/downloads/downloadsView.aspx?Langid=1&PNid=13&PFid=5&Level=5&Conn=4&DownTypeID=3&GetDown=false)
- Baixe `LINUX driver for kernel 3.x and 2.6.x and 2.4.x`
- Descompacte e execute o `sudo ./autorun.sh`
- Reinicie o oc: `sudo reboot`

[Referencias](http://qiita.com/h141dev/items/da79c973ddc1dcadbd33)

Ver a Bios: `sudo dmidecode | less`

# Shortcuts Gnome
Recorder desktop, Start end Stop: `Ctrl` + `Alt` + `Shift` + `R`
