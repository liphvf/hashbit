# Estrutura Básica

```
<!DOCTYPE html>
<html lang= "pt-br">
<head>
<meta charset="UTF-8"/>

    <title></title>
</head>
<body>

Hello Word! Olá
</body>
</html>
```

- `<!DOCTYPE html>` : Identifica que esse documento é HTML 5
- `<html> </html>` :  Marca o inicio e fim do documento html
- `lang= "pt-br"` : defina a lingua, isso ajuda na busca do google =)
- `<head>` : defina como ele vai se comportar, como ele vai ser configurado
- `<body> </body>` : Tudo que aparece no site
- `<meta charset="UTF-8"/>` : Defina o conunto de letras usadas.
- `<title></title>` :  define um título da página
- `<h1>` : define um título, as tags H1,2,3,4,5 e 6 são hieranquica, ou seja, H2 é um subtítulo de h1 e assim seguinte

```

<h1> - O chefe
<h2> - Vice presidente
<h3> - Diretor
<h4> - Gerente
<h5> - Assistente
<h6> - Menino do café
```

# <HEAD>

```
<style>

h1 {
    font-family: Arial;
    font-size: 30pt;
    color: blue;
    text-shadow: 2px 2px 2px black;

}

</style>
```

Essa tag é o css aplicado a página. o `h1` é qual tag você está modificando e  `{}` são as modificações

Agrupar títulos com a tag `<hgroup>`:

```
<hgroup>
<h1> Google Glass</h1>
<h2> A revolução do Google está chegando</h2>
</hgroup>
```

Imagem:

`<img src="_imagens/glass-oculos-preto-peq.png"/>`

Header: `<header></header>` delimita onde vai ser o cabeçalho

# Manipulção de linhas, espaços e palavras
O HTML só conta 1 espaço e não quebra linha automaticamente.

`<br/>` - Break row, quebra linha

`&nbsp;` - Non-breaking Space, espaço entre palavras

`<wbr/>` Utilizando em uma palavra que tem hifen `"super-<wbr/>humano",` para dizer que a mesma pode ser quebrado caso precise `&shy;` - Soft Hyphen. , ele faz a mesma coisa que o wbr só que coloca hifen

# Simbolos

| HTML     | Simbolo                 |
|:---------|:------------------------|
| &lt;     | <                       |
| &gt;     | >                       |
| &le;     | <=                      |
| &ge;     | >=                      |
| &pound;  | Libra                   |
| &yen;    | yen                     |
| &euro;   | euros                   |
| &copy;   | copyright               |
| &reg;    | marca registrada        |
| &trade;  | trade mark(TM)          |
| &permil; | permi                   |
| &sum;    | soma                    |
| &infin;  | infinito                |
| &times;  | multiplicação           |
| &plusmn; | +-                      |
| &oplus;  | +- dentro de um circulo |
| &radic;  | radiciação              |
| ...      | ...                     |

- `<b></b>` : negrito
- `<i></i>` : itálico
- `<em></em>` : énfase, ele inclina também (essa tem significado semantica)
- `<del></del>` : indica que o texto foi deletado, por isso ele risca ela
- `<span></span>` : útilizado para formatar pequenos texto com css
- `<sup> </sup>` : gera uma resultado de sobre escrito, tipo 2 elevado a 2
- `<sub> </sub>` : gera uma resultado de sub escrito, log base 10
- `<code></code>` : é considerado e formatodo como código
- `<pre></pre>` : pre formado, isso é todos os espaços e quebras de linhas são considerados

Exemplo para mostar um código

```
<pre>
    <code>
    </code>
</pre>
```

depreciado(u,s)

[CSS refenreces](https://developer.mozilla.org/pt-BR/docs/Web/CSS/CSS_Reference)

`<figure> </figure>` : é usada para agroupar imagens dando um signinifcado semanticos a elas `<figcaption> </figcaption>` : atribui uma legenda a imagem para melhorar na busca podendo até conter títulos

```
<figure>
<img src="_imagens/glass-quadro-homem-mulher.jpg">
    <figcaption> <h1> Blah Blah</h1> </figcaption>
</figure>
```

- `<link rel="stylesheet" type="text/css" href="">` : gera uma ligação entre o arquivo html e css

TIPOS DE LISTA

- `<ol></ol>` - Ordered lists - lista ordenada (ele tem o atributo type='1' ou 'a', 'A', 'i', 'I')
- `<ul></ul>` - Unordered list - lista não ordenada
- `<li></li>` - list item.

Exemplo de lista ordenada:

```
<ol>
    <li>Gotas de chuva nas rosas</li>
    <li>Bigodes de bichanos</li>
    <li>Chaleiras de cobre lustradas</li>
    <li>Luvas de lã quentinhas</li>
</ol>
```

Exemplo de lista não ordenada:

```
<ul>
    <li>Queijo</li>
    <li>Nata</li>
</ul>
```

Aninhamento de listas:

```
<ol>
    <li>Interesses do Papai
        <ul>
            <li>futebol</li>
            <li>crochê</li>
        </ul>
    </li>
    <li>Interesses da Mamãe
        <ul>
            <li>detestar futebol</li>
            <li>paraquedismo</li>
        </ul>
    </li>
</ol>
```

ou

```
<ul>
     <li></li>
         <ol>
             <li></li>
        </ol>
    <li></li>
        <ol>
             <li></li>
             <li></li>
        </ol>
    <li></li>
</ul>
```

`<ol type="1" start="3"></ol>` Nesse caso ele é uma lista numéria começando de 3
`<ul type="square ou circle ou  disc"></ul>`

`<a href="http://..." target='_blank'> </a>` tag ancora (cria links) blank faz abrir em outra aba

# ORDEM DAS CORES
`#RED, RED, GREEN, GREEN, BLUE, BLUE`

IMG + LINK:

```
<a href="http://www.codecademy.com/">
    <img src="http://s3.amazonaws.com/codecademy-blog/assets/f3a16fb6.jpg"/>
</a>
```

Lembre-se que <p> e </p> são tags de abertura e fechamento.

Podemos dar mais instruções às tags incluindo atributos na tag de abertura. Um atributo é simplesmente uma característica ou alguma descrição para o comentário no elemento. Você viu isso com src em <img> e href em <a>.
- [Acompanhar tecnoligas nos browser](http://caniuse.com/)
- [startbootstrap](https://github.com/IronSummitMedia/startbootstrap)
- [Curso em Video - HTML 5](http://www.cursoemvideo.com/lesson/curso-de-html5-00-site-completo/)
