# Django Guide:
- Instale a virtual env e ative.
- Instalar django e connector do banco postgres `$ pip install django psycopg2`
- crie uma pasta e rode > `$ django-admin.py startproject nome_do_projeto`

## Estrutura:
- **manage.py** -> roda o servidor
- **urls.py** -> define a estrutura das urls e quais existem, para onde apontam.
- **settings** -> configurações do seu servidor, apps...

**ATENÇÃO APÓS CRIAR A APLICAÇÃO, USE LOGO O MAKE MIGRATIONS**

Ao criar um models, a qual tem o modelo de banco, use o comando `python manage.py makemigrations APP` caso esteja tudo certo, você não precisará botar o nome do APP. depois uso o `python manage.py migrate`

Isso ele irá criar uma pasta migrations, onde ele tem as mudanças feitas no seu banco. Caso você altera o models, execute novamente.

## Configure o banco e unicode em settings.py

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'cytogen',
        'USER': 'genomika',
        'PASSWORD': 'g3n3t1c@',
        'HOST': ''
    }
}
```

```
LANGUAGE_CODE = 'pt-br'
```

- sincroniza banco de dados, criando as tabelas necessárias: `python manage.py migrate`
- criar um usuário para acessar o admin(localhost:8000/admin): `python manage.py createsuperuser`
- roda o servidor: `$ python manage.py runserver`

## Criar aplicação:
O Django é separado por applicação, dando a ele a capacidade de modularizar de maneira fácil.

Criando aplicação core: `$ python manage.py startapp core`

Apartir daqui o django cria uma pasta com o nome do app, com a seguinte estrutura: **init**.py, admin.py, models.py, tests.py, views.py
- admin -> administração interna do django
- models ->  criação de tabelas
- tests.py -> testes unitários
- views -> funções de representam resposta a determinadas urls(exemplos: redirecionamento)

Agora temos que configurar no arquivo settings.py nossa aplicação, informando que ela existe. Observe que escrevemos simplemooc.**core** e não só **core**, pois por arquinização movemos a pasta core para dentro da pasta simplemooc mais interna do projeto. LEMBRANDO: se estivemos na pasta raiz seria só **core** , isso pois ele toma como referência a pasta raiz, nesse caso o primeiro simplemooc.

```
INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    # My Application
    'simplemooc.core',
)
```

## Urls:
Após criarmos uma app, temos que referencia-la no arquivo urls, para que quando chamada aponte para nossa nova app.

para isso, criamos uma expressão regular(o django já tem exemplos prontos), para apontar, seguindo o padrão seria r'**^****$**' o inicio e fim da string que vai ficar na url /algumacoisa, **simplemooc.core.views.home** seria a nossa aplicação, **name='home'** o apelido para referencia-lo.

```
urlpatterns = patterns('',
    #Antes estava assim. sem o nome core, que identifica a aplicação.
    #url(r'^$', 'simplemooc.views.home', name='home'),

    url(r'^$', 'simplemooc.core.views.home', name='home'),
    url(r'^admin/', include(admin.site.urls)),
)
```

Caso queira acessar a view agora, ele vai dizer que não existe porque na pasta do nosso projeto não criamos a view

## Criando views:
Para criar nossas views de maneira organizada e seguindo o conceito de **DRY(Don't Reapeat Your Self)**, criamos uma pasta chamada **templates** (a qual o django já reconheci, pois a considera como estrutura padrão dele) na pasta do nosso app.

Dentro da pasta ficará nossos arquivos **.html**.

No arquivo views.py iremos criar uma função para apontar para nosso .html. render(**request**(reposta a uma requisição), **'home.html'**, {Esté parametro é um dicionário que gera um context})

```
def home(request):
    # por baixo ele ainda usa httpresponse
    return render(request, 'home.html')
```

## Adicionando arquivos staticos (.css):
Para colocarmos um .css na nossa aplicação, criaremos uma pasta chamada **static** (para arquivos estáticos) dentro do **APP**. Feito isso colocaremos nosso arquivos css nesta pasta.

Em nosso html precisaremos referencia o css, como fariamos em um html puro, só que utilizando as tags django.

No inicio do html depois do `<!doctype html>` colocamos: `{% load staticfiles %}` para carregar os arquivos staticos da pasta **static**

Em nosso **HEAD** na referencia ao .css colocamos `{% static 'css/styles.css' %}` a qual identifica que este é um arquivo estatico presente na pasta **static** do app ao qual está sendo executado.

```
<head>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.3.0/pure-min.css">
    <link rel="stylesheet" href="{% static 'css/styles.css' %}" />
</head>
```

Apartir de agora temos está estrutura:
- admin -> administração interna do django
- models ->  criação de tabelas
- tests.py -> testes unitários
- views -> funções de representam resposta a determinadas urls(exemplos: redirecionamento)
- templates -> nossos .htmls
- static -> arquivos estaticos como .css

# Re-uso .html
Seguindo a filosofia de **DRY**, podemos perceber que ao montarmos paginas .html muitas partes desta são comuns, então criaremos templates base para todas as outras utilizando as tags do django.

Utilizando conceito de herança em páginas .html, temos um arquivo base que terá a tag `{% block content}` CONTEÚDO AQUI` {% endblock %} `com essa tag dizemos que ali entrará um bloco de código que apelidamos de **content**.

```
<!doctype html>
{% load staticfiles %}
<head>
    <link rel="stylesheet" href="{% static 'css/styles.css' %}" />
</head>
<body>
<div class="content">
    <div class= "content">
        {% block content %} {% endblock %}
    </div>
</body>
</html>

```

No arquivo que re-utiliza esse código digamos que ele herda tudo que tem em base.html utilizando a tag: `{% extends 'base.html' %}` e com a tag `{% block content %}` abrimos o bloco **content** para podermos colocar o conteúdo dentro, depois fechamos com a tag `{% endblock %}`

```
{% extends 'base.html' %}
{% block content %}
        <div class="pure-g-r content-ribbon">
            <div class="pure-u-2-3">
                <div class="l-box">
                    <h4 class="content-subhead">Contatenos apartida daqui</h4>
                    <h3>Publique suas aulas</h3>
                    <p>
                        testando
                    </p>
                </div>
            </div>
        </div>
{% endblock %}
```

# Fluxo de criações:
## Criando uma página:
**Na raiz:**
1. url.py -> adiciona/cria a url

**Na pasta do APP:**
1. app/views.py -> cria a função request
2. app/templates -> cria a página

## Criando APP
**No Terminal com a env ligada**
1. `$ python manage.py startapp nome_do_app` -> cria o app
2. mv APP /projeto -> move a pasta do app para dentro do projeto para manter organizado.

**Na Raiz**
1. settings.py -> adiciona o app

# Template tags
falar da estrutura

o template é uma estrutura a qual vai ser montado o html, nele as variaveis são definidas asssim: {{variavel}} lembre que pode user o ponto para acessar atriuto {{variavel.name}} ou metodo {{variavel.metodo}} <sem os parenteses >

os filtros podem farmatar um texto, como deixalos minisculos

{{variavel|lower}}
- {} -> indica que é uma tag
- % -> inicia
- % -> finaliza
- url -> função
- '' -> parametro

Utilizamos essa tag para apontar para uma pagina sem precisarmos do endereço completo, lembrando que o nome da página utilizado é o apelido que colocamos no arquivo **urls.py**: `{% url 'nome da página'%}`, **CASO TENHA UM NAMESPACE, VOCÊ TEM QUE COLOCAR O NOME DO NAMESPACE:PAGINA** `{% url 'NameSpace:nome da página'%}`

Exemplo:

```
        <div class="pure-menu pure-menu-open pure-menu-fixed pure-menu-horizontal">
            <a class="pure-menu-heading" href="">SIMPLE MOOC</a>
            <ul>
                <li class="pure-menu-selected"><a href="{% url 'home' %}">Início</a></li>
                <li><a href="#">Cursos</a></li>
                <li><a href="{% url 'contact' %}" >Contato</a></li>
            </ul>
        </div>
```

# Urls
Por questão de organização, e para não mantermos tadas as urls em 1 arquivo só, vamos separa-las.

Iremos criar na pasta do APP(no exemplo usamos 'core'), um arquivo urls.py, e colocar nele tadas as urls que queremos separar do arquivo urls.py raiz(lembre-se do import):

```
from django.conf.urls import patterns, include, url

urlpatterns = patterns('simplemooc.core.views',
    url(r'^$', 'home', name='home'),
    url(r'^contato/$', 'contact', name='contact'),
)
```

No arquivo original retiramos estás urls, e colocamos uma referencia(a nível de package), para o arquivo urls.py do APP.

```
from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
    url(r'^', include('simplemooc.core.urls', namespace='core'),
)
```

Nesse caso a cima, tiramos o **$** , e colocamos o caminho do package(**simplemooc.core.urls**) com include.

Caso queiramos uma url assim: .../forum/contatos

na expressão regular, colocariamos **url(r'^forum/'**, e ele iria concatenar com contatos, pois estamos referenciando ele apartir de **include('simplemooc.core.urls')**.

Utilizamos o **namespace**, para caso precise em outra APP usar o mesmo **name**(por exemplo contact) sem dar conflíto. Na ferencia do **.html** ficaria assim: `{% url 'APP:home' %}`

O **patterns** pode receber um argumento para simplificar a referencia. No nosso caso colocamos 'simplemooc.core.views', para que toda pagina que colocarmos fique simplemooc.core.views.**PAGINA**. no caso de urls.py da pasta core, temos: `url(r'^$', 'home', name='home')` ou seja: `url(r'^$', 'simplemooc.core.views.home', name='home')`

## Models
Para criar um tabela no banco, no nosso caso um modelo, precisamos ir no arquivo model.py

O nome da tabela será definida pelo nome da APP_NomeDaClasse e o id ele já cria automaticamente:

```
class Courses(models.Model):

    name = models.CharField('Nome', max_length=100) #verbose name = é o que aparce para o usuário, nesse caso seria o 'Nome'

    slug = models.SlugField('Atalho', )

    description = models.TextField('Descrição', blank=True) # blank=True quer dizer que o campo não é obrigatorio

    start_date = models.DateField('Data de início', null=True, blank=True) # null= True , diz que pode ser null

    #django não armazena imagens no banco de dados, por isso temos que dar a ele um diretorio físico.

    image = models.ImageField(upload_to='courses/images', verbose_name='Imagem' )

    #precisa no settings ter um MEDIA_ROOT = ''
    #o upload_to é referente a pasta do media root, ou seja, vai ficar mediaroot/courses/images


    created_at = models.DateTimeField('Criado em', auto_now_add=True) #auto_now_add toda vez que criar um curse ele vai colocar a data atual

    update_at = models.DateTimeField('Atualizado em', auto_now=True) #auto_now, toda vez que for salvo ele altera para a data atual.
```

Para poder usar o ImageField `pip install pillow`

Em settings.py: `MEDIA_ROOT = os.path.join(BASE_DIR, 'simplemooc', 'media')` Estou pegando o BASE_DIR e concatenando nele simplemooc e media... ou seja, ficará BASE_DIR/simplemooc/media/Endereço_definido_no_ImageField

No terminal usanmos o comando: `python manage.py makemigrations` que é equivalente ao syncdb

para ser ID no django, é só colocar no argumento do campo `primary key = true`

APP.save() salva a tabela, e ele indetifica se precisa de update APP.delete() deleta a tabela

`from simplemooc.courses.models import Courses` `Courses.object`

Course.objects.all() returna a lista de cursos, pois objects é um manager que tem a função all. lembrando que é uma lista

Course.objects.filter(slug='django') returno pelo filtro posso aninha filter, exemplo (filter().filter().filter()) posso colocar uma virgula, que será meu AND -> filter(lala,lala)

Course.objects.filter(name__icontains='django')

Course.delete() caso não passe nada, deleta tudo

**REVER AULAS DE MODELS**

(Mais métodos)[[https://docs.djangoproject.com/en/1.7/ref/models/querysets/](https://docs.djangoproject.com/en/1.7/ref/models/querysets/)]

Caso tenha mechido no model e precisa re-criar a tabala, lembre de deletar a pasta migrations dentro do APP

# ADMIN
import os modulos que voce quer usar e depois registre:

```
from django.contrib import admin

from .models import Gene, Trouble
# Register your models here.
admin.site.register(Gene)
admin.site.register(Trouble)
```

# INFORMAÇÔES EXTRAS:
[django baseado em mtv - model template views](https://docs.djangoproject.com/en/1.7/faq/general/)

Caso queria usar o python interativo com os modolus do django: `python manage.py shell`

Add em url.py dentro de core> add em views > cria pagina em templates

(fluxo no form)[[https://docs.djangoproject.com/en/1.7/topics/forms/](https://docs.djangoproject.com/en/1.7/topics/forms/)]:

cria na pasta do app(core), o arquivo forms.py> cria uma classe que recebe forms.Forms> na views.py coloca esse form no context e no html, chama form

saber comandos:

./manage.py

# Migrate
[Docs](https://docs.djangoproject.com/en/1.8/topics/migrations/)

A função migrate salva as alteração do models para poder commitar o banco sem problema, quando você altera alguma coisa, precisa rodar o migrate

Commandos:
- `python manage.py makemigrations` = Cria uma migração para todos os aplicativos (para isso deve existe uma pasta **migrations** que ele próprio cria), Caso não existe use o commando `python manage.py makemigrations [APP]` onde APP é o nome da application que você quer criar seus arquivo migrates, onde nele contem as mudanças do model.
- Após as mudanças criadas é preciso você commitalas, ou sejá efetivalas no banco, para isso use o comando `python manage.py migrate`

## **ATENÇÃO**
Lembre-se sempre de após mudar qual quer coisa no model, usar o comando `makemigrations`

Caso precise criar os migrates depois, use: `python manage.py migrate --fake-initial`

# Apps(Plugins) Para o django:
Pesquisa no banco _on de fly_. [django-ajax-select](https://github.com/crucialfelix/django-ajax-selects)

Visual novo do admin: [django-grappeli](https://github.com/sehmaschine/django-grappelli)
