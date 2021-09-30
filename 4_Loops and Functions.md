# The Julia Language: Loops and Functions


This document will go through **loops** and **functions** in the Julia programming language. Both loops and functions are integral parts in a programming language! We will first look at different types of loops and Julia lang (for and while loops) as well as how to program them. After going through loops, we will learn how to create functions as well as learn how functions in Julia lang are declared (there are a couple of different ways).

# Loops 

The two loops that are used in Julia programming are for loops and while loops. While loops use conditions and the loop is only run when the condition is true. If you want the loop to run a certain amount of times, that is when you should use a for loop. 

## For Loops

### For loop syntax in Julia:

```
for variable in loop iterable
    body
end 
```
Keywords: `for`, `in`, `end`

Note that we are using the `end` keyword in order to terminate/end the loop. 

#### For loop examples:

Lets first try a simple loop where we are printing out numbers 1-4:
```julia
for i in 1:4 # when doing a for loop in Julia, we often use the `in` keyword
    println(i)
end
```
*You can also use `=` instead of the `in` keyword:*
```julia
for i = 1:4 
    println(i)
end
```
**output:**
```
1
2
3
4
```
As you can see from the output above `1:4` prints out number 1-4 including both 1 and 4.

#### For loop iterating through an array

Lets try doing a for loop where we print out each item in a list. Below, I have created the list that has different types of fruits.
```julia
fruit = ("Strawberry", "Apple", "Blueberry", "Rasberry", "Orange", "Melon", "Kiwi")
println("Here is a list of my fruit: ")
for item in fruit
    println(item)
end
```
**output:**
```
Strawberry
Apple
Blueberry
Rasberry
Orange
Melon
Kiwi
```
## While Loops

### While loop syntax in Julia:
```
while condition
    body
end
```
#### While loop examples:

In the above section for for loops, we learned how to print out number 1-4 using a `for` loop. Lets try to do the same using a `while` loop. Remember: while loops are run until the condition is false, this means we can use boolean statements for the condition.

```julia
i = 0
while i < 4
    i += 1
    println(i)
end
```
**output:**
```
1
2
3
4
```
#### While loop iterating through an array

Now lets see how we can iterate through an array using a `while` loop. I will be using the same list from my `for` loop example:
```julia 
fruit = ("Strawberry", "Apple", "Blueberry", "Rasberry", "Orange", "Melon", "Kiwi")
i = 1 # remember, indexing lists/arrays start with 1 in Julia Lang
println("Here is a list of my fruit: ")
while i <= length(fruit)
    println(fruit[i])
    i += 1
end
```

# Functions

### Syntax for Declaring a Function

There are a few different ways to declare a function in Julia. I have listed examples and the syntax for each of them.

```
function name_of_fucntion(instance if applicable)
    body
end
```
Keywords: `function`, `end`

Note: the `function` keyword is used in this first way to declare a function. You put the `function`keyword before the name of your function. In parenthesis, you will put the instances your are passing, you can leave this empty if there are no instances being passed. You terminate/end the function block with the `end` keyword.

#### Examples:

```julia
function hello(name)
    return("Hello $name !")
end
hello("Ismah") # calling the function 
```
After After running this functiona above, Julia returns: `hello (generic function with 1 method)`meaning `hello` is a function with 1 method/instance variable


Julia will return: `Hello Ismah!`

#### Function that takes in two parameters(using the above syntax):

```julia
function sum(a, b)
    return("The sum of $a and $b is ", a+b)
end
sum(1,2)
```
Julia will return: `The sum of 1 and 2 is 3`

### Syntax for Declaring a Function in 1 line

In Julia language, you are able to declare a function in 1 line! In this case, you do not need to use the `function` keyword like you did in the above example.

```
name_of_fucntion(instance if applicable) = body
```

#### Examples (using the 1 line syntax above): 

When writing a function using the 1 line method, you will still be able to call the function the same way.

``` julia
hello2(name) = return("Hello $name !")
hello2("Ismah")
```

#### Function that takes in two parameters(using the above syntax):

As you can see below, you can create a function using the 1 line method and also be able to pass in two parameters.

```julia
sum2(a,b) = return("The sum of $a and $b is ", a+b)
sum2(2,2)
```

### Anonomous/lamda function Syntax

Anonomous function syntax used `->` after the instance and before the body of the function.

```
name_of_fucntion = instance -> body
```

#### Examples using the anonomous function syntax:

You are still able to call the function the same way

```julia
hello3 = name -> return("Hello $name !")
hello3("Ismah")
```

#### Function that takes in two parameters(using the above syntax):
```julia
sum3 = (a,b) -> return("The sum of $a and $b is ", a+b)
sum3(2,2)
```

## Mutating vs Non-Mutating Functions

What is the differences between mutating and non mutating functions and how are they used? Functions that follow that `!` charector make it so that it alters what ever contents given. However, without the `!` charector, the contents will not be permenently alterned. What does this mean? Lets see an example using the sort and sort! function:

```julia
my_nums = [6, 2, 4, 8]
sort(my_nums) # will output the sorted list
my_nums # but if you were to print the list again, the original one will display
```
output: `6 2 4 8`
```julia
my_nums = [6, 2, 4, 8]
sort!(my_nums) # will output the sorted list
my_nums # sort! also changes the ordering of the original list
```
output: `2 4 6 8`

## Recursive Functions

You are able to perform recursive functions in Julia but like Python, you should avoid large recursive functions. It does (from what I have seen/read) tend to get messy and may not run correctly.

This example of a recursive function is on a factorial:

```julia
function factorial(n)
    if n == 1
        return n
    else
        return n*factorial(n-1)  
    end
end
```

## Multiple Return Parameters

Does Julia allow multiple return values? The answer is yes! The following function takes in a list as a parameter and returns 2 values. The first value is a tuple with the minimum value in the list as well
as the index. The second value is also a tuple which is the maximum value in the list as well as its index 

```julia
function minmax(l)
    mi = findmin(l)
    ma = findmax(l)
    return mi, ma
end

num = [4, 7, 2, 1, 8] 
minmax(num)
```
output: `((1, 4), (8, 5))`

## Checking if Julia functions are pass-by-reference or pass-by-value

Lets first try to see if sending a variable into a fucntion will change its permanent value:
```julia
function add1(x)
    x = x + 1
end

x = 5
add1(x)
println(x) # this seems to indicate pass-by-value
```

The above print statement returns `5` suggesting that is is pass by value meaning that the object x was only temporarily changed inside the function instead of changed in memory.

Now lets look to see a function that takes in an array:

```julia
function push1(list)
    push!(list, 1)
end

x = [5, 4, 3, 2]
push1(x)
println(x) # this seems to indicate pass-by-reference
```
The print statement returns `5 4 3 2 1` suggesting that the array was permenently changes suggesting that is is pass-by-reference. 

# Sources
*You can learn more about Julia loops and functions through the following resources*
- Julia Academy Introductory Course (free): https://juliaacademy.com/courses/375479/lectures/5745524
- Julia Documentation on Control Flow: https://docs.julialang.org/en/v1/manual/control-flow/#Short-Circuit-Evaluation 
- GeeksforGeeks Splitting String in Julia: https://www.geeksforgeeks.org/splitting-string-into-array-of-substrings-in-julia-split-and-rsplit-method/ 







