# Cook Book Problems
Essa pagina é didicada a resoluções de problemas que passei.

## Install r8168 drive [#001]

```
OS: Arch, Debian
Desktop Environment: ALL
```

1. Instalar: `sudo pacman -S r8168` (Caso for debian: `sudo apt-get install r8168-dkms`)
2. Entre no usuário root: `su`
3. `echo "blacklist r8169" > /etc/modprobe.d/r8169_blacklist.conf`

## Pendrive em Read Only [#002]

```
OS: Arch, Debian
Desktop Environment: ALL
```

Gerado por um erro de ACL(regra de segurança). Com o pendrive desconectado verifique a pasta que está sendo montada o pendrive:

### Resolver
1. `df -h` ou `fdisk -l` ou `lsblk` (esse ultimo fica extremamente organizado)
2. Depois veja a ACL desta pasta: `sudo getfacl /media/USUÁRIO`
3. Depois set a nova permissão: `sudo setfacl -m u:USUÁRIO:rwx /media/USUÁRIO/`

## Disco no Nautilus Fantasma [#003]

```
OS: Arch, Debian
Desktop Environment: ALL
```

Quando instalei o debian pelo pendrive ele deixou um disco referente ao pendrive no sistema.

### Resolver:
No arquivo /etc/fstab exclua ou comente a linha: `#/dev/sdb1       /media/usb0     auto    rw,user,noauto  0       0` Ou alguma parecida

**Comandos úteis Utilizado**
- `blkid`: ver uuid das unidades

## Atalho no context menu do Nautilus para criar novos arquivo [#004]:

```
OS: Arch, Debian
Desktop Environment: Gnome
```

O novo nautilus não vem por padrão o menu de contexto, aquele utilizado para criar um arquivo .txt, .doc... Porém é simples a resolução. Na pasta Templates, você cria um exemplo do arquivo, por exemplo:
1. Vá para a pasta templates(em caso de não existir, crie em sua home) `cd ~/Templates`
2. Crie os arquivos de template `touch 'New_Text_File.txt' && touch 'New_Word_File.doc' && touch 'New_Excel_Spreadsheet.xls'`
3. Pronto.

Helps: (Adicionar o new file)[[http://askubuntu.com/questions/208291/how-to-create-a-new-blank-file-in-nautilus-3-6-and-above](http://askubuntu.com/questions/208291/how-to-create-a-new-blank-file-in-nautilus-3-6-and-above)]

## Ativar o antigo search [#005]:
```
OS: Debian
Desktop Environment: Gnome
```

[Ativar o antigo search](http://www.webupd8.org/2014/01/nautilus-type-ahead-find-feature.html)


## Extras:
Levantar dhcp: `sudo dhcpcd enpls0`
