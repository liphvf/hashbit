# Introdução
## Python Philosophy - The Zen of Python by Tim Peters
**Origial English**
- Beautiful is better than ugly.
- Explicit is better than implicit.
- Simple is better than complex.
- Complex is better than complicated.
- Flat is better than nested.
- Sparse is better than dense.
- Readability counts.
- Special cases aren't special enough to break the rules.
- Although practicality beats purity.
- Errors should never pass silently.
- Unless explicitly silenced.
- In the face of ambiguity, refuse the temptation to guess.
- There should be one-- and preferably only one --obvious way to do it.
- Although that way may not be obvious at first unless you're Dutch.
- Now is better than never.
- Although never is often better than _right_ now.
- If the implementation is hard to explain, it's a bad idea.
- If the implementation is easy to explain, it may be a good idea.
- Namespaces are one honking great idea -- let's do more of those!

**Tradução livre:**
- Bonito é melhor que feio.
- Explícito é melhor que implícito.
- Simples é melhor que complexo.
- Complexo é melhor que complicado.
- Plano é melhor que aninhado.
- Esparso é melhor que denso.
- Legibilidade conta.
- Casos especiais não são especiais o bastante para se quebrar as regras.
- Embora a simplicidade supere o purismo.
- Erros nunca deveriam passar silenciosamente.
- A menos que explicitamente silenciados.
- Ao encarar a ambiguidade, recuse a tentação de adivinhar.
- Deveria haver uma – e preferencialmente apenas uma – maneira óbvia de se fazer isto.
- Embora aquela maneira possa não ser óbvia à primeira vista se você não for holandês.
- Agora é melhor que nunca.
- Embora nunca, seja muitas vezes melhor que pra já.
- Se a implementação é difícil de explicar, é uma má idéia.
- Se a implementação é fácil de explicar, pode ser uma boa idéia.
- Namespaces são uma idéia estupenda – vamos fazer mais deles!

Fontes:

[Fonte1](http://www.python.org/dev/peps/pep-0020/) , [Fonte2](http://pipeless.blogspot.com/2008/09/o-zen-de-python.html)


## Comunidade Python Telegram
- [Telegram Pythonbr](https://telegram.me/pythonbr)

## O mundo pythonico:
**Python é Dinamicamento tipado:**

```
a = "abc" #hora é string
a = 10 # hora é inteiro
```

**Porem é fortimente tipado:**

```
a = "abc"
a + 10 #dará erro, para funcionar precisará converter
```

**Atribuição multipla:**

```
a = 10
b = "abc"
a,b = b,a #aqui dizemos que a = b e b = a sem perder o valor e sem precisar de uma variável auxiliar

#ou até textos
a,b,c = "OBA" # a = "O" b= "B" c = "A"
```

## Documentação:

Symbol | Helper
:----- | :----------------------------------------
dir()  | mostra as funções envolvidas
help() | mostra documentação completa dessa função

Exemplos:

```
a  = 10
dir(a)
help(a)

#ou

dir(int)
help(int)
```

**Operações Básicas:**

Symbol | Description
:----- | :-----------------------------
=      | Atribuição
+      | Adição, concatenação
-      | subitração
*      | Muiltiplicação
**     | Elevado(pow)
/      | Divisão
//     | divisão por inteiro(sem resto)

**Operadores Relacionais:**

Symbol | Description
:----- | :---------------------
==     | Paração de igualdade
!=     | Diferente
not    | **não** é alguma coisa
and    | **é** alguma coisa
or     | **ou** alguma coisa
>      | **maior** que
<      | **menor** que
>=     | **maior igual** que
<=     | **menor igual** que

**Sugar Syntax:**

Symbol      | Description
:---------- | :---------------------------
Variável+=  | adiciona da variável o valor
Variável-=  | subitrai da variável o valor
Variável/=  | divisão
Variável*=  | Multiplicação
Variável**= | Potenciação
Variável//= | Divisão por inteiro

```
a = 10
a+= 2 # isso é: a = a + 2
```

# Isso e Aquilo (ou Isso, Mas Não Aquilo!)
Operadores booleanos não são simplesmente avaliados da esquerda para a direita. Assim como os operadores aritméticos, há uma ordem na execução dos operadores booleanos:
1. `not` é o primeiro a ser avaliado;
2. `and` é o segundo a ser avaliado;
3. `or` é o último a ser avaliado.

Por exemplo, `True or not False and False` retorna `True`.

Parênteses () garantem que suas expressões sejam avaliadas na ordem que você quer. Qualquer coisa entre parênteses é avaliada como uma unidade separada

```
#Comparadores:

3 < 4
5 >= 5
10 == 10
12 != 13

Operadores booleanos:

True or False
(3 < 4) and (5 >= 5)
this() and not that()

Declaracoes condicionais

if this_might_be_true():
    print "This really is true."
elif that_might_be_true():
    print "That is true."
else:
    print "None of the above."

Vamos para o grand finale.
```

# Entrada de dados
**Funções de input:**

Symbol                           | Python
:------------------------------- | :------
input("texto a ser exibido")     | python3
raw_input("texto a ser exibido") | python2

**Funções de conversão:**

Symbol  | Description
:------ | :--------------------
str()   | converte para string
int()   | converte para inteiro
float() | ponto flutuante

Todo input em python ele recebe como string portanto é necessário converter:

```
a = input("digite o valor") #suponha de digitemos 10
b = input("digite o valor") # aqui 20

print (a+b)  # ele retorna 1020, pois aqui ele está concatenando strings

print(int(a)+int(b)) # ele retorna 30, aqui ele está somando inteiros

#outra opição era converter direto do input, o que garante que a pessoa digitará so valores do tipo

a = int(input("digite o valor"))
```

Fatos Interessantes:

No python você consegui obter

função id()

Metodos que começam com `__doc__` são metodos reservados.

# String
Caso esteja usando python 2.7, para poder usar acento tera que escrever na primeira linha: `# -*- coding: utf-8 -*-`

Function                   | Description
:------------------------- | :---------------------------------------------
`print()`                  | exibi string
`len()`                    | Retorna tamanho da string
`.lower()`                 | deixa minisculo `VARIABLE.lower()`
`.islower()`               | Pergunta se é minusculo
`.upper()`                 | maiusculo
`.isupper()`               | pergunta se é maisculo
`str()`                    | convert variavel para string `str(VARIABLE)`
`strip`                    | limpa espaços brancos de uma string
`split()`                  | quebra uma string apartir de um delimitador
`texto.startswith ('b')`   | Se começa com 'b'
`texto.endswith('ah')`     | Se terminar com 'ah'
`texto.find('tigre',4)`    | Procura um tigre no texto apartir da posição 4
`.replace('str1', 'str2')` | Procura e troca a str1 pela str2
`'str1'.join(lista)`       | Junta os itens da lista separando pela str1
                           |

Marcador         | Description
:--------------- | :------------------------------------------
%d               | decimal
%s               | string
%f ou (%.**2**f) | potno flutuante(para definir casa decimais)
                 |

```
#Há três modos de criar strings

'Alpha'
"Bravo"
str(3)
```

```
#Métodos de string

len("Charlie")
#returna: 7

"Delta".upper()
# returna: DELTA

"Echo".lower()
#retuna: echo

"vem para a caixa".strip()
#returna vemparaacaixa

"banana, morango, manga".split(",")
#returna uma lista separando por virgula L=[banana,morango,manga]
```

```
#Exibição de uma string:
print "Foxtrot"

#LEMBRANDO, posso escrever assim(ele não esta concatenando, esta exebindo junto):
print("alguma coisa", string_1, "outra coisa")


#Técnicas avançadas de exibição
string_1 = "Camelot"
string_2 = "lugar"

print ("Nao vamos para %s. E um %s bobo." % (string_1, string_2))

#Lembre do % que fica após fechar string.


#ponto flutuante
a = 3.1415

print("com 2 casas decimais %.2f" %(a))
```

## Fatiamento de String
x = '0123456789'

print(x[0:2]) print(x[:2]) print(x[2:]) print(x[3:5]) print(x[:-2]) print(x[-4:-2]) print(x[:])

Do primeiro até o final andandos de 2 em 2 print(x[::2]) Lendo do final ao inicio de 2 em 2 print(x[::-2])

Poderia por exemplo verificar se uma palavra é palindrome, (**ana** escrito de trás para frete ou frente para trás são iguais) x[::] == x[::-1]

Se quiser alterar o primeiro caracter de uma string por concatenação:

texto = 'olá mundo' texto = '@' + texto[1:]

nesse caso to pegando a string, colocando @  + o texto apartir do caracter de indice 1

Lembrar de temos aspas simples, `''`, duplas `""`, Triplas, `''' '''`

3 aspas define que é uma constante multi-linha.

Estudar:

função any()

`any(c for c in s if c.islower())`

texto.find('tigre', 4) eu estou procurando um tigre apartir da posição 4(eu posso omitir a posição). Ele me retorna um indice. caso não ache nada ele retorna -1

texto = texto.replace('tigre', 'gato')

Fatos interessantes:

função

Retorna o número do caracter ord('a') retorna o caracter apartir do número chr(97)

```
def esconde(msg):
s = ''
for c in msg: s+= chr(ord(c) + 30000)
return s

def mostra(msg):
s = ''

for c in msg: s += chr(ord(c) - 30000)
return s
```

o open('endereço do arquivo', 'permissãi') tem as sequintes permissões: r - read w - write a - append b - binary
- atualização
- lembrar do readlines() gera lista onde cada elemente é uma linha

# Built-in Functions
São funções nativas do Python(ou seja, não precisa de um import), a qual axilia no desenvolvimento.

## enumerate()
Esta função auxilia no for, pois com ela temos o indice da linha e o valor. **Indice = idx** **r = valor**

Estrutura: **enumarete(recebe lista)**

```
for idx, r in enumerate(row[5].split(',')):
    if idx == 0:
        continue
```

Obeserve que no **if** acima temos um continue, neste casso, ele não terminar o for, ele recomeça só que apartir do 2 valor de **r**. Ou sejá o **r** muda o fluxo do do for.

# DIS
Com o dis eu consigo ver o baixo nível(assembler de uma função python)

```
import dis

dis.dis('c = a+b')


#ele retorna:
  1           0 LOAD_NAME                0 (a)
              3 LOAD_NAME                1 (b)
              6 BINARY_ADD
              7 STORE_NAME               2 (c)
             10 LOAD_CONST               0 (None)
             13 RETURN_VALUE


#Este é um código assembler do função c = a+b
```

# Regex Expressão Regulares

```
#Busca a string 'GAATTC' na string dna

dna = "ATCGCGAATTCAC"
if re.search(r"GAATTC", dna):
    print("restriction site found!")
```

```
#Busca agora a sequencia, podendo varia a 3 letra por A, T, G, C

dna = "ATCGCGAATTCAC"
if re.search(r"GC(A|T|G|C)GC", dna):
    print("restriction site found!")

#ou

dna = "ATCGCGAATTCAC"
if re.search(r"GC[ATGC]GC", dna):
    print("restriction site found!")

#caso o grupo esteja [^ATG] quer dizer que não pode ser nem A, T ou G. ou seja, o '^', negativa a função

#caso queira procurar qual quer caracter exemplo GC%GC, utiliza-se de ponto'.':
dna = "ATCGCGAATTCAC"
if re.search(r"GC.GC", dna):
    print("restriction site found!")
```

- GAT?C -> existe um GAT + qualquer caracter em qualquer quantidade(podendo não existir) + C (Exemplos:  GGGAAATTT or GGGTTT.)
- GGAA+TTT -> pode ter mais de de 1  ou mais de um **A**, porem no minimo 2 **A** . (Exemplos: GGAAAAAAAATTT, GGAATTTTTTTTT), pore não pode ter GGTTT

Helps: (re)[[http://pythonforbiologists.com/index.php/introduction-to-python-for-biologists/regular-expressions/](http://pythonforbiologists.com/index.php/introduction-to-python-for-biologists/regular-expressions/)] (Docs)[[https://docs.python.org/3.2/library/re.html](https://docs.python.org/3.2/library/re.html)] (Docs2)[[https://docs.python.org/3.1/library/re.html](https://docs.python.org/3.1/library/re.html)] (Video)[[https://www.youtube.com/watch?v=ZdDOauFIDkw](https://www.youtube.com/watch?v=ZdDOauFIDkw)]

# Date Time
`from datetime import datetime`

```
from datetime import datetime
now = datetime.now()
print(now)
print(now.year)
print(now.month)
print(now.day)
```

```

from datetime import datetime
now = datetime.now()

print '%s/%s/%s' % (now.month, now.day, now.year)
print '%s:%s:%s' % (now.hour, now.minute, now.second)
```

- [SciKit Tratamentode Imagem](http://scikit-image.org/)
- [Pymotw](http://pymotw.com/2/)
- [PythonTutor](http://www.pythontutor.com/)
- [PyPy](http://pypy.org/)
- [Python OpenGL](http://pyopengl.sourceforge.net/)
- [HackInCast](http://mindbending.org/pt/hack-n-cast-v06-python) [python-patterns](https://github.com/faif/python-patterns)
- [Persistencia, Pikle, Json, Yaml](http://nbviewer.ipython.org/github/ricardoduarte/python-para-desenvolvedores/blob/master/Capitulo27/Capitulo27_Persistencia.ipynb)
- [O que mudou no python3](https://pythonhelp.wordpress.com/2013/09/01/o-que-mudou-no-python-3/)
- [An Introduction to Interactive Programming in Python (Part1)](https://www.coursera.org/course/interactivepython1)
- [Yield](http://www.jeffknupp.com/blog/2013/04/07/improve-your-python-yield-and-generators-explained/)
- [Kivy](http://kivy.org/#home)
- [json pymotw](http://pymotw.com/2/json/)
- [Blog Colaborativo](http://pythonclub.com.br/)
- [Biopython](http://biopython.org/wiki/Main_Page)
- [Django Package](https://www.djangopackages.com/) : Package para django
- [Dictionary](http://www.tutorialspoint.com/python/python_dictionary.htm)
- [Dictionary set default](http://www.tutorialspoint.com/python/dictionary_setdefault.htm)
- [Virtualenv Pós-active](http://virtualenvwrapper.readthedocs.org/en/latest/scripts.html#postactivate)
- [Unit Test1](http://www.jeffknupp.com/blog/2013/12/09/improve-your-python-understanding-unit-testing/)
- [Unit test2](http://www.drdobbs.com/testing/unit-testing-with-python/240165163)
- [Imgur Downloader](http://www.toptal.com/python/beginners-guide-to-concurrency-and-parallelism-in-python)
- [PEP8 Tradução](http://wiki.python.org.br/GuiaDeEstilo)
- [PEP8](https://www.python.org/dev/peps/pep-0008/)
- [GOF for python](http://ginstrom.com/scribbles/2007/10/08/design-patterns-python-style/)
- [Learning with Python 3 (RLE)](http://openbookproject.net/thinkcs/python/english3e/)
- [Python Debug](https://docs.python.org/3.5/library/pdb.html)
- [Python for Biologists](http://pythonforbiologists.com/index.php/introduction-to-python-for-biologists/regular-expressions/)
- [ReWork](http://37signals.com/rework/)
- [Invoker](http://www.pyinvoke.org/) : 'trabalha parecido com o fabric'
