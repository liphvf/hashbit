# C# Cheat Sheet

## INTRODUCTION

C# is a powerful Object Orientated language, for those coming from Java or C++ you should be
able to pick up the syntax for C# quickly. A few points:

- The language is case-sensitive (So A and a are different)
- Lines terminate with semi-colons
- Code is put in code blocks { }
- Inline comments start with //
- Block comments start with /* */
- XML comments start with ///


## VARIABLES

To declare a variable you specify the data type and variable name followed by a value.

### SYNTAX

`DataType variableName = value;`

### NAMING RULES

- Variables must start with underscore or letter
- Variables cannot contain spaces
- variables can contain numbers
- Cannot contain symbols (accept underscore)

### EXAMPLE
```
string Name = "thecodingguys";
int Year = 2013;
I will use these two variables throughout.
```


## ARRAYS

Arrays are similar to variables, but can hold more than one value.

### SYNTAX

```
DataType[ ] ArrayName = { Comma Separated Values } // Array of any size
DataType[] ArrayName = new DataType[3] {Command Separated Values } //Expects 3 values
```

### EXAMPLE

```
string[] MyGamesOf2013 = {"GTAV", "Battlefield3"};
string[] MyMoveisOf2013 = new string[3] {"The Amazing Spiderman", "The Expendables
2", "Rise of the planet of the apes"};
```


## STRINGS

### CONCATENATION

Concatenation is done through the + operator.

#### EXAMPLE
`Console.WriteLine("Hello " + "World");`

### NEW LINE

#### EXAMPLE
`Console.WriteLine("Hello \n" + "World");`

### STRING.FORMAT

Formats an object, you specify the formatting you wish to perform, the following formats an
integer and displays the currency symbol.

#### EXAMPLE
`Console.WriteLine(string.Format("{0:C}", 5));`

Depending on your computers regional settings you will see £5.00 displayed (You’ll see your
countries currency symbol). The 0:C is the formatting we wish to do, in this case it means
format the first parameter (0) and show a currency sign.
