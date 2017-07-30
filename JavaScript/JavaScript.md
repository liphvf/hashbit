# JavaScript

- [ECMAScript 6, uma breve introdução à POO](http://tableless.com.br/ecmascript-6-uma-breve-introducao-a-poo/)
- [https://opbeat.com/](https://opbeat.com/)
- [http://handlebarsjs.com/expressions.html](http://handlebarsjs.com/expressions.html)
- [https://doclets.io/](https://doclets.io/)
- [https://thinky.io/](https://thinky.io/)
- [express-handlebars](https://github.com/ericf/express-handlebars)
- [underscore](https://github.com/jashkenas/underscore)
- [teleirc](https://github.com/FruitieX/teleirc)

Basic:
- string -> `'menssagem'`
- tamanho da string -> `"yourName".length`
- comentário -> `//`
- box dialog boolean -> `confirm('menssagem')`
- input -> `prompt('seu nome é?')`
- print -> `console.log(2 * 5)` `console.log("Alô")`
- declavar variavel -> `var nome_da_var = valor`
- NaN(Not a Number) -> isNaN(valor), verifica se é um número

# Signals:

```
    > Maior que
    < Menor que
    <= Menor ou igual a
    >= Maior ou igual a
    == Igual a
    != Diferente de
    === Igual a
    !== Diferente de
    % Retorna o resto da divisão
```

```
+= 2 //Adiciona ele mesmo por 2
-= 2 //subitrai ele mesmo por 2
/= 2 //divide ele mesmo por 2
*= 2 //multiplica ele mesmo por 2
```

# Control
Use if to specify a block of code to be executed, if a specified condition is true Use else to specify a block of code to be executed, if the same condition is false Use else if to specify a new condition to test, if the first condition is false Use switch to specify many alternative blocks of code to be executed

```
if (time < 10) {
    greeting = "Good morning";
} else if (time < 20) {
    greeting = "Good day";
} else {
    greeting = "Good evening";
}


switch(expression) {
    case n:
        code block
        break;
    case n:
        code block
        break;
    default:
        default code block
}
```

# Loop:
for - loops through a block of code a number of times for/in - loops through the properties of an object while - loops through a block of code while a specified condition is true do/while - also loops through a block of code while a specified condition is true

```
var person = {fname:"John", lname:"Doe", age:25};

var text = "";
var x;
for (x in person) {
    text += person[x];
}

#note que eu to chamando person[passando x], pois esse for each só me retorna o indices


or


for (i = 0; i < cars.length; i++) {
    text += cars[i] + "<br>";
}


or


while (i < 10) {
    text += "The number is " + i;
    i++;
}

or


do {
    code block to be executed
}
while (condition);
```

## String
`'o rato roeu'.substring(2,6)` vai de 2 a 6 na string, igual a fatiamento só que o 2 é onde começa e 6 é o número de casas

Caso queira acessar uma indice da string, usa-se `'o rato'.charAt(2)`, nesse caso ele retornará **r**

## Random
Math.random()

for (var counter = 1; counter < 6; counter++) {     console.log(counter); }

# Array:
var names = ["Mao","Gandhi","Mandela"];

var sizes = [4, 6, 3, 2, 1, 9];

var mixed = [34, "doce", "azul", 11];

Acessar Array.

names[1] lenght ...

Bom! Agora vamos criar um array 2D. Não só isso, mas um array 2D denteado. Lembre-se, isso significa um array de arrays, e seus arrays aninhados não tem todos o mesmo comprimento! Por exemplo:

var aList = [ [1, 4, 2], [7] ];

hits.push(text[j]); == append

var coinFace = Math.floor(Math.random() * 2);

# Criando Objetos
Há dois modos de criar um objeto: usando notação literal de objeto (que é o que você acabou de fazer) e usando o construtor de objeto.

A notação literal é simplesmente criar um objeto com chaves, assim:

```
var myObj = {
    type: 'fancy',
    disposition: 'sunny'
};
```

var emptyObj = {};

Quando usa o construtor, a sintaxe é assim:

`var myObj = new Object();`

Isso diz ao JavaScript: "Eu quero criar uma coisa new , e quero que essa coisa seja um Objeto.

Você pode adicionar chaves ao seu objeto de duas maneiras depois de ele ser cirado:

```
myObj["name"] = "Charlie";
myObj.name = "Charlie";
```

Os dois estão corretos, e o segundo é uma abreviação do primeiro. Vê como isso é similar aos arrays?

```
var me = new Object();
me.name = 'Meu nome'
me.age = 20
```

Sintaxe literal:

```
var myObj = {
    key1: value,
    key2: value
}

var myObj = {};
myObj.key1 = value;
myObj['key2'] = value;
```

Construtor object:

```
var myObj = new Object();
myObj.key1 = value;
myObj['key2'] = value;
```

# JavaScript - The Good Parts:
- Evite comentários `/* */` pois eles podem gerar erros em espreções regulares `var rm_a = /a*/.match(s)`, use '//'
- [Nunca usar palavras reservadas](http://www.w3schools.com/js/js_reserved.asp)

# Números
- Não a diferença entre 1 e 1.0, tudo em javascript é um double de 64bits
- Número elevado ficaria assim `3e10` ou `3E10` o resultado seria: `30000000000`
- O valor `NaN` é um valor númerico que resulta de uma operaçao que não pode produzir um resultado normal. `NaN` não é igual a nenhum valor, incluindo ele mesmo. Pode-se usar `isNaN(número)` para detectar se é um número.
- o valor infinity representa valores maiores que: 1,79769313486231570e +308
- `Math` é um conjunto de metodos para trabalhar com números.

# String
- Pode ser representa por aspas simples('') ou duplas("").
- `\` é um caracter de scape
- Grupo de unicode baseado em 16bits
- tudo é um cadeia de caracteres, ele não tem tipo para caracter simples.

Table de caracter de escape, para inserir função ou o proprio caracter usamos barra invertida antes `\`

| Caracter | Função                       |
|:---------|:-----------------------------|
| "" e ''  | Define string                |
| \        | scape                        |
| /        | barra                        |
| b        | backspace                    |
| f        | nova pagina                  |
| n        | nova linha                   |
| r        | retorno de carro             |
| t        | tabulação                    |
| u        | unicode (4 digitos decimais) |

Exemplos:

"A" === "\u0041" "quero proxima linha \n"
- Sequencia de caracteres são imutáveis, uma vez feita. não muda
- tem o atributo length para saber tamanho "blah".lenght
- concatenar string 'c' + 'a' + 't' === 'cat'
- lembre do 'cat'.toUpperCase()

Considerados Falsos:
- false
- null
- undefined
- ''
- 0
- NaN

# Referências:
## Study WorkFlow:
CodeCademy > JavaScript: The Good Parts >

## Cursos:
- [CodeCademy](http://www.codecademy.com/pt/tracks/javascript) : "Melhor Curso para começar"
- [CodeSchool](https://www.codeschool.com/paths/javascript) : "Exelente curso Pago"
- [Platzi](https://courses.platzi.com/) : "Curso do Frame Work Sails.js e mais"
- [FontEndMasters](https://frontendmasters.com/)

## Fontes:
- [E-mail News](http://javascriptweekly.com/) : "Google de javascript, envia por e-mail noticias toda semana."

## Ebooks:
- [JSBooks revolunet](http://jsbooks.revolunet.com/) : "Site que vários livros e referências"
- [Secrets of the JavaScript Ninja](http://www.amazon.com/Secrets-JavaScript-Ninja-John-Resig/dp/193398869X/)
- [Ninja Script](http://novatec.com.br/livros/ninja-javascript/)
- [Resumo Learning JavaScript Design Patterns](http://addyosmani.com/resources/essentialjsdesignpatterns/book/)
- [JavaScript: The Good Parts](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742) : "Melhor livro para programadores"
- [Understanding ECMAScript 6 leanpub](https://leanpub.com/understandinges6) : "Not complete eBook"

Free
- [Eloquent JavaScript](http://eloquentjavascript.net/)
- [javascriptenlightenmen](http://www.javascriptenlightenment.com/)
- [JavaScript Garden PT-BR](http://bonsaiden.github.io/JavaScript-Garden/ptbr/)
- [Java Script jstherightway](http://jstherightway.org/) : "Lista de projeto javascript"
- [Mozilla](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
- [DevDocs](http://devdocs.io/javascript/)

## Leitura:
[BROWSERS AND THE WEB](http://www.20thingsilearned.com/en-US/home) : "20 coisas sobre a internet"

## Games:
[CodeCombat](http://codecombat.com/) : "Jogue Programando"

## FrameWorks
[NodeFrameWorks](http://nodewebmodules.com/)

Extras: [TypeOff](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof)

[Scratchpad](https://developer.mozilla.org/en-US/docs/Tools/Scratchpad)

[ORM](http://bookshelfjs.org/)

# Javascript for mobile:
[Fuse](https://www.fusetools.com/)

# Leituras:

- [SuperHeroJs](http://superherojs.com/)
- [Resilient Web Design](https://resilientwebdesign.com/)
- [Designer Better Forms](https://uxdesign.cc/design-better-forms-96fadca0f49c)
- [Tudo que precisa saber sobre Emoji](https://www.smashingmagazine.com/2016/11/character-sets-encoding-emoji/?utm_source=ponyfoo+weekly&utm_medium=email&utm_campaign=issue-38)

## CSS:
- [Css Reference](http://cssreference.io/) : Contem um dicionário de referencias para CSS. #Toolbox
- [Flexbox Patterns](http://www.flexboxpatterns.com) : Site para refenrência do padrão FlexBox. # Tollbox
- [8 simple rules for a robust, scalable CSS architecture](https://github.com/jareware/css-architecture/blob/c683e60959895fa824bac048f73f2bd10a5fc46e/README.md?utm_source=ponyfoo+weekly&utm_medium=email&utm_campaign=issue-36)
- [SVG](https://www.sarasoueidan.com/blog/icon-fonts-to-svg/?utm_source=ponyfoo+weekly&utm_medium=email&utm_campaign=issue-44)
- [5 Common Mistakes Designers Make When Using Cards In Design](http://zurb.com/blog/5-common-mistakes-designers-make-when-usi)
- [Learning from Lego: A Step Forward in Modular Web Design](https://alistapart.com/article/learning-from-lego-a-step-forward-in-modular-web-design?utm_source=ponyfoo+weekly&utm_medium=email&utm_campaign=issue-43)
- [Ultimate Guide to Non-Rectangular Headers](https://codepen.io/ahmadnassri/post/non-rectangular-headers-part-1)