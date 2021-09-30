# The Julia Language
## Loops and Functions

This document will go through **loops** and **functions** in the Julia programming language. Both loops and functions are integral parts in a programming language! We will first look at different types of loops and Julia lang (for and while loops) as well as how to program them.

The two loops that are used in Julia programming are for loops and while loops. While loops use conditions and the loop is only run when the condition is true. If you want the loop to run a certain amount of times, that is when you should use a for loop. 

After going through loops, we will learn how to create functions as well as learn how functions in Julia lang are declared.

## For Loops

### For loop syntax in Julia:

```
for variable in loop iterable
    body
end 
```
Keywords: `for`, `in`, `end`

Note that we are using the `end` keyword in order to terminate/end the loop. 

### For loop examples:

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

### For loop iterating through an array

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
### While loop examples:

In the above section for for loops, we learned how to print out number 1-4 using a `for` loop. Lets try to do the same using a `while` loop. Remember: while loops are run until the condition is false, this means we can use boolean statements for the condition.

```julia
i = 0
while i < 4
    i += 1
    println(i)
end
```
**Output:**
```
1
2
3
4
```
### While loop iterating through an array

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

## Functions




