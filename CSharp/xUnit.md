# xUnit

xUnit.net is a free, open source, community-focused unit testing tool for the .NET Framework. Written by the original inventor of NUnit v2, xUnit.net is the latest technology for unit testing C#, F#, VB.NET and other .NET languages. xUnit.net works with ReSharper, CodeRush, TestDriven.NET and Xamarin. It is part of the ASP.NET Open Source Gallery under the Outercurve Foundation, licensed under Apache 2 (an OSI approved license). 


- [xUnit Getting Started](https://xunit.github.io/docs/getting-started-dotnet-core.html)



## Existem 2 tipos de tests tradicionais:

- **Facts** are tests which are always true. They test invariant conditions.
- **Theories** are tests which are only true for a particular set of data.


Fact

```
using Xunit;

namespace MyFirstDotNetCoreTests
{
    public class Class1
    {
        [Fact]
        public void PassingTest()
        {
            Assert.Equal(4, Add(2, 2));
        }

        [Fact]
        public void FailingTest()
        {
            Assert.Equal(5, Add(2, 2));
        }

        int Add(int x, int y)
        {
            return x + y;
        }
    }
}

```




A good example of this testing numeric algorithms. Let's say you want to test an algorithm which determines whether a number is odd or not. If you're writing the positive-side tests (odd numbers), then feeding even numbers into the test would cause it fail, and not because the test or algorithm is wrong. 


```
[Theory]
[InlineData(3)]
[InlineData(5)]
[InlineData(6)]
public void MyFirstTheory(int value)
{
    Assert.True(IsOdd(value));
}

bool IsOdd(int value)
{
    return value % 2 == 1;
}
```




## Console runner return codes

The following return codes are used by the console runner:


|Return code |	Meaning|
|------|------|
|0 | 	The tests ran successfully.|
|1 | 	One or more of the tests failed.|
|2 | 	The help page was shown, either because it was requested, or because the user did not provide any command line arguments.|
|3 | 	There was a problem with one of the command line options passed to the runner.|
|4 | 	There was a problem loading one or more of the test assemblies (for example, if a 64-bit only assembly is run with the 32-bit test runner).| 


