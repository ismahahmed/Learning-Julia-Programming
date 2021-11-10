# The Julia Language: Object Oriented Programming Using Structs

This document will introduce Julia language **structs**. Structs (previously known as *types*) are similar to what other programming languages call *classes*. In short, structs are used for object oriented programming in Julia. There is a specific format used for Julia structs (that will be later discussed in this document). A structs have *field values*, and these field values can be used in different functions for the struct.  

# Syntax

Lets go over some important key words and syntax! 

## Keywords

- **struct**: Keyword before defining a struct/class name
- **function**: Functions be used in a struct using the keyword, function
- **new**: Keyword used ind=side the constructor function to create new objects
- `a::b`: a is a type b
- **end**: Use the keyword *end* to terminate a struct

## Struct Syntax

```
struct Name
  field value name
end
```
*Note: Make sure the name of your struct starts with a capital letter and the name of your field values starts with a lowercase letter*

You can also have your constructers inside your struct, like this:

```
struct Name
  field value name

function Name() 
        new(fieldval)
    end
end
```
*Note: constructor name should be the same name as the struct name*

Lets look at a real example using a Person struct. Below, you will see a struct Person, with two constructors. One constuctor takes in 0 parameters, while the other constructor takes in 2 parameters:

```julia
struct Person
    name
    age 

    function Person() # if given no parameters
        new("Name", 0)
    end

    function Person(n, a)
        new(n, a)
    end      
end
```
# Functions in Struct

How would we created functions for our struct? Look at the syntax below:

```
function functionName(s::StructName)
    *insert body*
end
```
*Note: s is a type StructName*

Lets look at an example of a function for our Person class. This function takes in the age parameter and returns true or false if the person onject is an adult or not:

```julia
function adult(p::Person)
    if p.age >= 18
        return true
    else
        return false
    end
end
```

#  Instantiate Structs and Calling Functions

Below, we are instanciating 2 Person objects. Object p1, has the name "Sam" and an age of 14. `p1.name` returns the name Sam and `p1.age` returns the age. The same goes for p2, our second Person object. We call a function by: `functionName(object)`.

```julia

p1 = Person("Sam", 14) 
println(p1.name) 
println(p1.age)  
println(adult(p1))

p2 = Person("Bob", 18) 
println(p2.name) 
println(p2.age)  
println(adult(p2))
```
# Inheriting

It is possible to inherit structs in Julia programming, however, currently, multiple inheritence is not supported. 

Here is an example of stuct inheritence where Student inherits Person. 

```julia
struct Student
    s::Person
    major 
end
```
We can also give Student functions:

```julia
function printMajor(s::Student)
    return("My major: $(s.major)")
end
```
**Calling and Instantiating**

```julia
s1 = Student(Person("Sally", 19), "Computer Science")
println(s1.major) 
println(getMajor(s1))
```

