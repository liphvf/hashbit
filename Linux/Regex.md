# Expressão Regulares ( Regex )

Em ciência da computação, uma expressão regular (ou o estrangeirismo regex, abreviação do inglês regular expression) provê uma forma concisa e flexível de identificar cadeias de caracteres de interesse, como caracteres particulares, palavras ou padrões de caracteres. Expressões regulares são escritas numa linguagem formal que pode ser interpretada por um processador de expressão regular, um programa que serve um gerador de analisador sintático ou examina o texto e identifica as partes que casam com a especificação dada. (fonte: Wikipedia)

## Objetivo:
Olá a Todos, hoje temos como objetivo criar um tutorial pratico para criação de regex. Abaixo estão algumas ferramentas que nos ajudaram a testar nossos regex.

**Ferramentas para test de Expressão Regulares**
- [regexr](http://regexr.com/)
- [regex101](https://regex101.com/)
- [regexpal](http://www.regexpal.com/)




| Character Clasess | Descrição |
| ----------------- | --------- |
|.	| any character except newline |
|\w \d \s |	word, digit, whitespace |
|\W \D \S |	not word, digit, whitespace |
|[abc] |	any of a, b, or c |
|[^abc] |	not a, b, or c |
|[a-g] |	character between a & g |



| Anchors | Descrição |
| ----------------- | --------- |
| ^abc$ |	start / end of the string|
| \b |	word boundary|

| Escaped characters | Descrição |
| ----------------- | --------- |
| \. \* \\\ ou [.] [*] [\\] |	escaped special characters
| \t \n \r |	tab, linefeed, carriage return
| \u00A9 |	unicode escaped ©


| Groups & Lookaraund | Descrição |
| ----------------- | --------- |
| (abc)	| capture group |
| \1 | backreference to group #1 |
| (?:abc) | non-capturing group |
| (?=abc) | positive lookahead |
| (?!abc) | negative lookahead |


Todo grupo que você constroi gera uma resposta, está resposta é armazena em indices começando de `1`: para acessar esse indice, usamos o backreference(retrovisor) `\1`


| Quantifiers & Alternation  | Descrição |
| ----------------- | --------- |
| a* a+ a? | 0 or more, 1 or more, 0 or 1 |
| a{5} a{2,} | exactly five, two or more |
| a{1,3} | between one & three |
| a+? a{2,}? | match as few as possible |
| ab\*|\*cd | match ab or cd |


# Exercícios:
Com base nas tabelas anteriores, tente fazer um regex que reconheça:

1. Palavras (não incluindo números): `oi testano 123 32doisum`
2. Linhas em branco `^$`
3. Linhas entre 20 e 60 caracteres `^.{20,60}$`
4. Palavras que começam]
5. Qual a diferença entre: `[super|hiper]+ mercado` `(super|hiper) mercado`
6. Usando retrovisor, quero reconhecer essa linguagem -->  `eStOu-Comprando-eStOu` e  `eStOu Comprando eStOu`  : `([a-zA-Z]+)-? ?(Comprando)-? ?\1`

LEMBRAIVOS DO ESPAÇO

# .NET
pg 154 a 162