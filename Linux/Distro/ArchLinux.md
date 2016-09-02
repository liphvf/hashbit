# Arch Linux
## Antergos(XFCE):
Um pouco da minha exp em Antergos

### package em uso:
Estão presente do snippet [pkgs.py](https://github.com/cafedebyte/openbook/blob/master/Python/Snippets/pkgs.py)

**Para instalar gems, lembre de exportar o path ou adicionar ao /etc/environment**
- [Adicionar Autocomplete ao gitflow-ahv](https://github.com/bobthecow/git-flow-completion)
- [Repositorios autocomplete original](https://github.com/petervanderdoes/git-flow-completion)
- [Instalação manual git flow](https://github.com/petervanderdoes/gitflow/wiki/Installing-on-Linux,-Unix,-etc)
- [Repositorio original git flow](https://github.com/petervanderdoes/gitflow/)



## Ajudas
- Remove pacote suas configurações e suas dependencias que não pedende de ninguém `sudo pacman -Rns`
- Remove pacotes orphans e suas depedências.`sudo pacman -Rs $(pacman -Qqdt)`
- Listar depedências: `pacman -Qdt`
- Instalar `pacman -S`
- Procurar `pacman -Ss`
- Instalar sem pedir permissão: `pacman -Syu --noconfirm`

> Aviso: cabal e pip pacman yaourt são package mananger

## AURvote
aurvote --configure

**Referencies:**

Package  | Repository | Function
:------- | :--------- | :---------------
dnsutils | pacman     | comandos de rede

# Artigos relevantes:
[PulseAudio split](https://www.archlinux.org/news/pulseaudio-split/)

# PC Format Checklist:
A ideia é escrever tudo de importante para checkar após installar o Arch.
- Ethernet / wifi
- keyboard shortcuts
- kernel update
- sound hdmi
- video drive

# Adicionar Windows ao grub:
update-grub no debian = grub-mkconfig no arch `grub-mkconfig -o /boot/grub/grub.cfg`

[Arch Wiki Reference](https://wiki.archlinux.org/index.php/GRUB#Automatically_generating_using_.2Fetc.2Fgrub.d.2F40_custom_and_grub-mkconfig)

# XFCE beep
`xset -b`

[Adicionar ao xprofile para autostart](https://wiki.archlinux.org/index.php/Xprofile)

# Problema no Locale:
Adicionar no ~/.brashrc

```
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export LC_COLLATE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
```

Não resolveu?
- Edit o arquivo /etc/environment , adicionando essas linhas. Caso existe alguma dela, edit o valor.
- [https://wiki.archlinux.org/index.php/Multilib](https://wiki.archlinux.org/index.php/Multilib)

# Adicionar repositórios:
Para adicionar repositórios no Arch, basta editar o arquivo/etc/pacman.d/mirrorlist.

## Adicionar Multilib:
- Descomente as 2 linhas:
- #[multilib]
#Include = /etc/pacman.d/mirrorlist

# Backup:
- /etc/environment
- ~/.bashrc
- ~/home

# [Problem] pacman não atualiza.
No caso do Antergos é só atualizar as chaves
- `pacman -Syu`
- `sudo pacman -S archlinux-keyring antergos-keyring`

# [Problem] Processos não voltam da swap (PC LENTO):
- `sudo swapoff -a`
- `sudo swapon -a`

# [Porblems] Openjdk Browser (Branco do brasil):

- Delete essa pasta: `sudo mkdir -p /etc/.java/.systemPrefs`
- Feche o browser e remova essa pasta: `rm -rf ~/.java ~/.icedtea`
