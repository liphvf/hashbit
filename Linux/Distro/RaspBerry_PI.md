# RaspBerry Pi (Raspbian):
- [EmulationStation](http://emulationstation.org/gettingstarted.html#install_rpi_standalone) : RPI para games
- Install
- Configure on blue screen (raspi-config)
- Adicionar Repositório testing
- `sudo apt-get update && sudo apt-get upgrade -y`
- Atualize o kernel: `sudo apt-get install linux-image-3.16.0-4-rpi linux-headers-3.16.0-4-rpi` ou `sudo apt-get install linux-image-3.16.0-4-rpi linux-headers-3.16.0-4-rpi --install-recommend --install-suggests -y -V`

# APT-GET Package
`apt-get install tree lynx`

lynx é uma navegador pelo terminal  

| Package | Function                    |
|:--------|:----------------------------|
| tree    | Mostra diretórios em arvore |
| lynx    | Browser de terminal         |

# Mumble Server
1. `sudo apt-get install mumble-server`
2. `dpkg-reconfigure mumble-server`
3. `sudo apt-get install mumble-server-web (NÃO É OBRIGATÓRIO)` or `mumble-django`
- Configurar FireWall: `sudo ufw allow 64738`
- Qual quer configuraçãos pode ser feita no arquivo: `/etc/mumble-server.ini`

**OBS: Feito isso ele estará rodando, lembre-se de configurar o roteador para DMZ**

## Helps:
[Murmurguide](http://wiki.mumble.info/wiki/Murmurguide),  [Mumble Server Raspberry PI](https://sharpygoesoff.wordpress.com/2013/05/20/setting-up-a-mumble-server-on-a-raspberry-pi/),  [Murmur.ini](http://wiki.mumble.info/wiki/Murmur.ini),

# Adicionar Repository Debian Testing ARMHF:
Perceba: `deb http://ftp.au.debian.org/debian testing main contrib non-free`

primeiro vem o deb, depois link para download, depois o time de servidor(no nosso caso testing) e por ultimo no final a arquitetura.
1. `sudo vim /etc/apt/sources.list`
2. copie a primeira linha e cole em baixo
3. Troque **wheezy** por **testing**
4. salve
5. `sudo apt-get update && sudo apt-get upgrade -y`

# Configure Network Para Static IP :
-Com base das configurações de sua rede vista nos comandos: `route -nee` e `ifconfig`

-Edite arquivo /etc/network/interfaces para:

```
auto lo

iface lo inet loopback
#face eth0 inet dhcp

iface eth0 inet static
address 192.168.25.82
netmask 255.255.255.0

network 192.168.25.0
brodcast 192.168.25.255
gateway 192.168.25.1

allow-hotplug wlan0
iface wlan0 inet manual
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp
```

# Hopper.pw DNS Server(DHCP)
Se para poder acessar de forma amigável e para poder sempre acessar o ip certo, utilizaremos o Hopeer.pw (Um tipo de No-IP)
1. [Cadastra-se](https://www.hopper.pw/)
2. Adicione o DNS:
3. No terminal use o link disponibilizado pelo hopper para atualizar seu ip atual: `curl -s http://marzvix.hopper.pw:JmjKPkr58L@ipv4.www.hopper.pw/nic/update`
4. Ele respondera de 2 formas **good** ou **nochg**. **good**: seu ip foi atualizado e **nochg**: não  teve atualização no ip, porem está funcionadno corretamente

Crie Script na home hopperpw.sh:
- Lembre-se que a url muda de acordo com o site hopper.pw
- **nohup** roda um programa em segundo plano e salva sua saida em nohup.out
- **watch** repete um programa em intervalo de segundos, neste caso 60s

```
#!/bin/bash

nohup watch -n 60 curl -S http://cafofohouse.hopper.pw:LPhf7cLJYZ@www.hopper.pw/nic/update &
```

Adicionar em /etc/rc.local antes do exit 0: `exec /home/pi/hopperpw.sh`

ou adicionar ao supervisor o comando completo.

## Helps:
[Hopper.pw](https://www.hopper.pw/help/),

# Transmission (Torrent Server):
1. `sudo apt-get install transmission-daemon`
2. `sudo nano /etc/transmission-daemon/settings.json`
3. `sudo /etc/init.d/transmission-daemon stop`
4. Change the following settings, modifying the download path to match whatever you called your external drive, and changing the password:

```
"download-dir": "/media/RPIPenDrive/Transmission/completed",
"incompleted-dir": "/media/RPIPenDrive/Transmission/progress"
"rpc-enabled": true
"rpc-whitelist-enabled": false
"rpc-username": "transmission"
"rpc-password": "raspberry"
```

Montar no Pendrive: `sudo mkdir /media/RPIPenDrive` `sudo mount /dev/sdx /media/RPIPenDrive` `sudo chmod -R 777 /media/RPIPenDrive`

`mkdir /media/RPIPenDrive/Transmission/progress` (for incomplete downloads) `mkdir /media/RPIPenDrive/Transmission/completed` (for completed downloads)

We need to take care about some permission stuff:

`sudo usermod -a -G debian-transmission pi` (change "pi" with your Raspberry Pi username if necessary) `chgrp debian-transmission /home/pi/progress` `chgrp debian-transmission /home/pi/completed`

`sudo /etc/init.d/transmission-daemon reload` `sudo /etc/init.d/transmission-daemon start`

freezing: [https://forum.transmissionbt.com/viewtopic.php?f=8&t=10931#p51084](https://forum.transmissionbt.com/viewtopic.php?f=8&t=10931#p51084) added export EVENT_NOEPOLL=1 to Transmission startup scripts in "Hacks & tutorials" section.

[http://mybookworld.wikidot.com/forum/t-290256/i-have-fixed-my-transmission-freezing-crashing-problems](http://mybookworld.wikidot.com/forum/t-290256/i-have-fixed-my-transmission-freezing-crashing-problems)

## Helps:
[Tutorial 1](https://melgrubb.wordpress.com/2014/08/01/raspberry-pi-home-server-part-9-transmission/), [Tutorial 2](http://www.htpcguides.com/install-transmission-raspberry-pi-latest-version-raspbian/),  [Tutorial 3](http://eiosifidis.blogspot.com.br/2013/03/use-raspberry-pi-as-torrent-download.html),  [Tutorial 4](http://www.robertsetiadi.net/installing-transmission-in-raspberry-pi/),  [Tutorial 5](http://www.htpcguides.com/install-transmission-raspberry-pi-latest-version-raspbian/),  [RaspBerry Forums](http://www.raspberrypi.org/forums/viewtopic.php?f=36&t=51219),

# NAS server, SAMBA
`sudo apt-get install samba samba-common-bin`
- Edite o arquivo: `sudo nano /etc/samba/smb.conf`
- Procure para editer:

  ```
  workgroup = your_workgroup_name
  wins support = yes
  read only = no
  ```

- Adicione no final:

  ```
  [Torrentbox]
  comment = Public Shares
  path = /media/USBDisk/shares/completed
  writeable = Yes
  only guest = Yes
  create mask = 0777
  directory mask = 0777
  browseable = Yes
  public = yes
  ```

Adicionar a senha do pi ao smb: `smbpasswd -a pi`
- Reinicie o servidor `/etc/init.d/samba restart`

Portas para abrir: [Portas](https://wiki.samba.org/index.php/Samba_port_usage)

Erros: Não consegue escrever? Verifique as permissões da pasta e os grupos de usuários.

## Helps:
[Tutorial1](http://www.tinkernut.com/2014/10/11/make-nas-network-attached-storage/),  [Tutorial2](http://store.raspberrypi.com/projects/pi-web-agent),  [Tutorial3](http://www.raspberrypi.org/forums/viewtopic.php?f=36&t=51219),  [NASpberryPI](http://www.naspberrypi.com/samba.html),  [NAS](http://elinux.org/R-Pi_NAS),

# DLNA (miniDLNA)
- Instale o minidlna: `apt-get install minidlna`

edit o arquivo: `/etc/minidlna.conf`

```
media_dir=A,/mnt/ext/Music
media_dir=P,/mnt/ext/Pictures
media_dir=V,/mnt/ext/Videos
friendly_name=Raspberry Pi
inotify=yes
```

`service minidlna start`

## Helps:
[Tutorial](http://bbrks.me/rpi-minidlna-media-server/),

# FIREWALL (UFW(IPTABLES))
- Instale o Firewall `apt-get install ufw`
- Adicione a porta do ssh `sudo ufw allow 22`
- Habilite `sudo ufw enable`
- Veja as portas aberta ou fechadas: `sudo ufw status`

## Helps:
- Descorbrir meu ip externo: `curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'`

[Video Tutorial](http://www.ronnutter.com/raspberry-pi-ufw-firewall-uncomplicated-firewall-part-1/),  [Ubuntu Wiki](https://help.ubuntu.com/community/UFW),  [Tutorial Guide](http://linuxpoison.blogspot.com.br/2008/10/useful-commands-in-ubuntu.html),  [Raspberru Forums](http://www.raspberrypi.org/forums/viewtopic.php?f=26&t=47115),  [Verificar Porta Aberta](http://www.yougetsignal.com/tools/open-ports/),  [Verificar Porta Aberta2](http://www.canyouseeme.org/),

# Django + Nginx + Gunicorn + Supervisor
- Configure uma virtualenv
- Instale o ngnix: `sudo apt-get instal nginx supervisor`
- Ative a Virtual Env e instale o gunicorn: `pip install gunicorn`
- Cria Grupo para web (Exemplo: www): `groupadd -r www`
- Adicionar grupo ao usuário: `usermod -a -G www USUÀRIO`
- Para saber se o usuário está no grupo, digite `groups` logado com o usuário
- Crie uma pata onde ficará os sites: `mkdir -p /var/www`
- Atribua a ela o grupo www e usuário que ira administra-la: `sudo chown -r usuário:www` (neste caso **www** é o grupo para sites web)

Estrutura do ngnix conta com sites available e enabled, na pasta avaible, fica os arquivos que podem ser ativados e enabled são link simbolicos para os sites que podem ser habilitados:

```
/etc/nginx/
├── conf.d
├── fastcgi.conf
├── fastcgi_params
├── koi-utf
├── koi-win
├── mime.types
├── nginx.conf
├── proxy_params
├── scgi_params
├── sites-available     #Sites Disponíveos
│   ├── default
│   └── localhost
├── sites-enabled       #Sites Habilitados
│   └── localhost -> /etc/nginx/sites-available/localhost
├── snippets
│   ├── fastcgi-php.conf
│   └── snakeoil.conf
├── uwsgi_params
└── win-utf
```

- Crie um arquivo site-avaible para o dizer o ngnix como será nosso site: `sudo vim /etc/nginx/sites-avaible/my_site`

```
upstream my_site {
    server 127.0.0.1:9000 fail_timeout=0;
}

server {

    listen   80;
    server_name localhost;

    client_max_body_size 4G;

    access_log /var/www/my_site/logs/nginx-access.log;
    error_log /var/www/my_site/logs/nginx-error.log;

    #Onde fica os arquivos staticos do projeto django
    location /static {
        alias /var/www/my_site/core/static/;
    }


    location / {
        # an HTTP header important enough to have its own Wikipedia entry:
        #   http://en.wikipedia.org/wiki/X-Forwarded-For
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

        # pass the Host: header from the client right along so redirects
        # can be set properly within the Rack application
        proxy_set_header Host $http_host;

        # we don't want nginx trying to do something clever with
        # redirects, we set the Host: header above already.
        proxy_redirect off;

        # Try to serve static files from nginx, no point in making an
        # *application* server like Unicorn/Rainbows! serve static files.
        if (!-f $request_filename) {
            proxy_pass http://my_site;      #Aqui fica o nome do method upstream
            break;
        }
    }

    # Error pages
    error_page 500 502 503 504 /500.html;
    location = /500.html {
        root /var/www/my_site/core/static/;
    }
}
```

- Crie um link simbolico e remova o default: `sudo rm /etc/nginx/sites-enabled/default` depois `sudo ln -s /etc/nginx/sites-avaible/my_site /etc/nginx/sites-enabled/`
- Para testar as configurações do seu nginx (em questão de syntax) use o comando: `sudo nginx -t`
- Se tudo tiver OK, Re-carregue e reinicie o nginx: `sudo /etc/init.d/nginx reload` `sudo /etc/init.d/nginx restart`
- Feito isso podemos testar o gunicorn : `gunicorn my_site.wsgi:application --bind 0.0.0.0:9000 &`
- Agora criaremos um script para rodar o gunicorn................
- Em /etc/supervisor/conf.d/ crie o arquivo: my_site.conf: `sudo vim /etc/supervisor/conf.d/my_site.conf`

```
[program:my_site]
command = /var/www/my_site/gunicorn_start                    ; Command to start app

user = hello                                                          ; User to run as
stdout_logfile = /var/www/my_site/logs/gunicorn_supervisor.log   ; Where to write log messages
redirect_stderr = true                                                ; Save stderr in the same log
environment=LANG=en_US.UTF-8,LC_ALL=en_US.UTF-8                       ; Set UTF-8 as default encoding
```

OBS: **Observe se todos os arquivos de logs e pasta para eles foram criados**

After you save the configuration file for your program you can ask supervisor to reread configuration files and update (which will start your the newly registered app).

```
$ sudo supervisorctl reread
hello: available
$ sudo supervisorctl update
hello: added process group
```

You can also check the status of your app or start, stop or restart it using supervisor.

```
$ sudo supervisorctl status hello
hello                            RUNNING    pid 18020, uptime 0:00:50
$ sudo supervisorctl stop hello  
hello: stopped
$ sudo supervisorctl start hello
hello: started
$ sudo supervisorctl restart hello
hello: stopped
hello: started
```

## Helps:
[Gist Com Arquivo de Configuração](https://gist.github.com/postrational/5747293),<br>[Gunicorn ReadDocs](http://gunicorn-docs.readthedocs.org/en/latest/deploy.html),  [Gunicorn Docs](http://docs.gunicorn.org/en/0.15.0/deploy.html),  [DigitalOcean 1](https://www.digitalocean.com/community/tutorials/how-to-deploy-python-wsgi-apps-using-gunicorn-http-server-behind-nginx),  [DigitalOcean 2](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-django-with-postgres-nginx-and-gunicorn),  [Django Docs](https://docs.djangoproject.com/en/1.8/howto/deployment/wsgi/gunicorn/),  [Tutorial 2014](https://scottlinux.com/2014/04/03/how-to-host-multiple-django-or-python-apps-on-the-same-host-with-nginx-and-gunicorn/),  [Tutorial 1](http://michal.karzynski.pl/blog/2013/06/09/django-nginx-gunicorn-virtualenv-supervisor/),  [Video 1](https://www.youtube.com/watch?v=G1U6rQa8x1s),  [Video 2](https://www.youtube.com/watch?v=ORWvy9fNxUI),  [Ngnix ebook Offical](http://nginx.com/resources/library/oreilly-building-microservices/),  [Ngix Tutorial,ebook,pdf...](https://github.com/openresty/nginx-tutorials),  [Nginx Multiple](http://michal.karzynski.pl/blog/2013/10/29/serving-multiple-django-applications-with-nginx-gunicorn-supervisor/),

# Deluge (Torrent Server)
- Instale os pacotes necessários para o deluge rodar: `sudo apt-get install deluged deluge-web deluge-console deluge-common`
- Para criar os arquivos de configurações base utilize a sequente sequencia:
- Inicie o deamon do deluge: `deluged` (testar com sudo para ver se evita o erro)
- após iniciar ele poderá dar um erro, ignore e depois mate o processo: `pkill deluged`
- edite o arquivo `~/.config/deluge/auth` adicionando usuário:senha:level: `vim ~/.config/deluge/auth` add `cafofo:shadkad:10` **Estes tem que ser os mesmo usamos para acessar SSH**
- Inicie novamente o deluged: `sudo deluged` ou `sudo /etc/init.d/deluged start`
- Agora abra o deluge console: `deluge-console`
- Digite `config -s allow_remote True` Logo em seguida digite `config allow_remote` depois `exit`
- Pare o deluged: `pkill deluged`
- Feito isso inicie o `sudo deluged` ou `sudo /etc/init.d/deluged start` e `nohup deluge-web &`
- Acesse o navegador [http://IP:8112](http://IP:8112)
- A senha default é: deluge
- Após iniciar troque a senha, e todas as configurações subsequentes ficam a cargo da interface gráfica
- adicionar ao firewall: `sudo ufw allow deluge` `sudo ufw allow 8112`

## Helps:
[Tutorial1](http://geeks.noeit.com/use-your-raspberry-pi-as-an-always-on-bittorrent-box/),  [Tutorial2](http://www.howtogeek.com/142044/how-to-turn-a-raspberry-pi-into-an-always-on-bittorrent-box/),  [Tutorial3](http://www.onepitwopi.com/raspberry-pi/installing-deluge-1-3-6-on-a-raspberry-pi/),  [Deluge Wiki](http://dev.deluge-torrent.org/wiki/UserGuide/ThinClient),  [Deluge Upstart](http://dev.deluge-torrent.org/wiki/UserGuide/Service/Upstart)

## Games:
[Libretro](http://www.libretro.com/) [Retro-pie](https://github.com/petrockblog/RetroPie-Setup)
