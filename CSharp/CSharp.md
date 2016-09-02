# `C#`

## Reference Curses:
- [EDX Curse](https://prod-edx-mktg-edit.edx.org/course/programming-c-microsoft-dev204x-2)
- [Xamarin Video Curso](https://mva.microsoft.com/pt-br/training-courses/iniciando-com-xamarin-forms-16334?l=cgNijSvQC_6205192797)
- [msdn](https://channel9.msdn.com/Series/Visual-Studio-2015-Enterprise-Videos)

## Links
- [Resharper](https://www.jetbrains.com/resharper/)
- [Codemaid](http://www.codemaid.net/)
- [Sentry](https://getsentry.com/welcome/)

## Tipos
- [Tipos](https://msdn.microsoft.com/en-us/library/exx3b86w.aspx)

- [Using](http://cbsa.com.br/post/c---por-que-usar-using.aspx)

- [Fields & Properties](https://msdn.microsoft.com/pt-br/library/mt656686.aspx#Properties)


# Interface vs Abstract

Interface não tem implementação e obriga implementação de todos as propriedades. Tendo só as assinaturas delas. A classe Abstrata pode herdar, como qual quer outra classe.

Abstract: Ela pode ter implementação, caso esteja com a keywork `virtual`, você poderá fazer um override, em caso de metodos e propriedades abstratas(com a keyword `abstract`) ele só tem a assinatura e obriga a implementação de quem a herda. Uma interface só pode herdar de um interface, até porque qual quer outra herança não faz sentido.

## method

A method is declared using a method signature and method body.   The signature portion is responsible for providing the access modifier, method return type, the method name, and the list of parameters.  The body contains the implementation for what the method is intended to do.   Each method signature component is explained here:

- **Access modifier - this is used to control the accessibility of the method (from where it can be called):**
    - private - most restrictive and allows access to the method only from within the containing class or struct
    - public - least restrictive, allowing access from any code in the application
    - protected - allows for access from within the containing class or from within derived classes
    - internal - accessible from files within the same assembly
    - static - indicates the method is a static member of the class rather than a member of an instance of a specific object


- Return type - used to indicate what type the method will return.  Use void if the method will not return a value or any supported data type
- Method name - all methods need a name so you know what to call in code.  Identifier rules apply to methods names as well
- Parameter list - a comma separated list of parameters to accept arguments passed into the method


```
public Boolean StartService(string serviceName)
{
   // code to start the service
}
```

In the preceding example, public is the access modifier, Boolean is the return type, StartService is the name, and string serviceName is the parameter list.  Note that the parameter list specifies a data type and a name for the parameter.


# Returning Data:


If the method returns a value, you specify how to handle this value, typically by assigning it to a variable of the same type, in your calling code.

The following code example shows how to capture the return value of the GetServiceName method in a variable named serviceName.


```
string serviceName = GetServiceName();
string GetServiceName()
{
   return "FourthCoffee.SalesService";
}
```

The above example shows returning a single value from the method.   There may be times when you would prefer to return multiple values from a method.  There are three approaches that you can take to accomplish this:

- Return an array or collection
- Use the ref keyword
- Use the out keyword

In this first code example, a call to the method ReturnMultiOut is made.  The parameters for this method use the out keyword to indicate that values will be returned for these parameters.  Note that we do not have to call this method with an assignment statement as in the previous method call to GetServiceName()

```
ReturnMultiOut(out first, out sValue);
Console.WriteLine("{0}, {1}", first.ToString(), sValue);

static void ReturnMultiOut(out int i, out string s)
{
    i = 25;
    s = "using out";
}
```

In this code example, the keyword ref is used to return multiple values from the method.  Typically the ref keyword requires that the variables being used are initialized first.

```
// Using ref requires that the variables be initialized first
sValue = "";
ReturnMultiRef(ref first, ref sValue);
Console.WriteLine("{0}, {1}", first.ToString(), sValue);

 static void ReturnMultiRef(ref int i, ref string s)
 {
        i = 50;
        s = "using ref";
 }
 ```
 
 
 ## OBS:
 
 Você pode nomear paramentros no C#, permitindo passar parametros em ordem que desejar, lembrando que a o visualstudio completará
 
 
 ```
 static void Area (int length, int width) {
     Console.WriteLine("The area is {0}", length * width);
     
 }
 
 // Chamado do metodo fica:
 
 Area(length: 10, width: 50) 
 
 ```
 
 Podemos definir um parametro de valor default:
 
 ```
 static void OptionalParams(int one, int two, string s = "default text") {
 Console.WriteLine("{0},{1},{2}", one, two, s)
 
 }
 
 // Chamada do metodo fica:
 
 OptionalParams(10, 20)  // Perceba que não é obrigado a colocar o valor de s
 ```
 ## Enum
 
 https://msdn.microsoft.com/en-us/library/sbbt4032.aspx
 
 
 
 ## Struct
 
Structs are essentially lightweight data structures that represent related pieces of information as a single item


```
//Declaring a Struct
public struct Coffee
{
    public int Strength;
    public string Bean;
    public string CountryOfOrigin;
    // Other methods, fields, properties, and events.
}

```

```
//Instantiating a Struct

Coffee coffee1 = new Coffee();
coffee1.Strength = 3;
coffee1.Bean = "Arabica";
coffee1.CountryOfOrigin = "Kenya";
```


Structs can contain a variety of members including constructors, fields, constants, properties, indexers, methods, operators, events, and even nested types. Keep in mind that structs are intended to be lightweight therefore if you find yourself adding multiple methods, constructors, and events, you should consider using a class instead.