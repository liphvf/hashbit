# Install virtualenv
Virtual Env é um ambiente de desenvolvimento aparte do seus sistema, ótimo para trabalhar com test de várias versões do mesmo framework ou lib.

Pre-Requisistos:
- Instale o PIP, repositório do python para pacotes: `sudo apt-get install python3-pip`
- Apartir do pip instale os pacotes para trabalhar com envs: `sudo pip install virtualenv virtualenvwrapper`

# VirtualenvWrapper Configuration
**On terminal**
- **_Definir onde as envs vão ficar:_** `$ export WORKON_HOME=~/.virtualenvs`
- **Defina o python padrão para criação de envs** `export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3`
- **_Coloca os comandos do wrapper no shell_** `source /usr/local/bin/virtualenvwrapper.sh`

**Add on bashrc**

Adicione no arquivo bash para toda vez que você abrir o terminal não precise executar os comandos acima.
- **Edite o bashrc ou bashrc_profile** `source /usr/local/bin/virtualenvwrapper.sh`

OBS: Pode acontece de o source não funciona, isso acontece normalmente porque seu sistema não é debian ou baseado em debian, então procure onde o virtualenvwrapper.sh fica no seu sistema.

# VirtualEnvWrapper Commum Command:
- workon [name_of_env] - > Active the env
- mkvirtualenv [name_of_env] --> Create a env (if you use a specific python use -p /bin/python2.7)
- rmvirtualenv [name_of_env] --> Delete env
- lsvirtualenv --> List all of the environments.
- cpvirtualenv [new_name] --> Duplicate an existing virtualenv environment.
- allvirtualenv --> Run a command in all virtualenvs under WORKON_HOME. Ex: `allvirtualenv pip install -U pip` (This install in all envs)
- workon [exist_env_name] --> active env
- deactivate [exist_env_name] --> deactive env
- add2virtualenv -> Adds the specified directories to the Python path for the currently-active virtualenv. Ex: add2virtualenv directory1 directory2 ...

OBS: se você digitar `$ virtualenvwrapper` terá uma lista dos comandos

# PIP Commands
- pip install -r requiriments.txt

# References Links:
- [ArchWiki](https://wiki.archlinux.org/index.php/Python_VirtualEnv)
- [VirtualenvWrapper](http://virtualenvwrapper.readthedocs.org/en/latest/)
- [VirtualEnv](https://virtualenv.pypa.io/en/latest/virtualenv.html)
- [pycursos](http://pycursos.com/django/)
- [Wrapper Commands Reference](http://virtualenvwrapper.readthedocs.org/en/latest/command_ref.html)
