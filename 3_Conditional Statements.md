# The Julia Language
## Conditionals

### Syntax
In Julia programming, there is a specific syntax and structure that is used for conditional statements.
- **if:** similar to python, if is followed by a condition and if that condition is true than the body of that if statment is executed
- **elseif:** an additional condition to consider, the elseif is followed by a unique condition and if it is true, the body of the elseif statement is executed
- **else:** the last if none of the previous conditions are executing/are true, than else is th default and the body of the else statement will be executed
- **end:** all conditional statements in Julia are terminated with the end statement 

### Structure of conditional statement

```
if condition
  code run if the first if statement is true
elseif condition
  code run if elseif statement is true
else
  code run by default if both if and elseif statements are false
end
```

### Example of if/elseif/else conditional statement
```julia
x = 4
y = 6

if x % 2 == 0 && y % 2 == 0
    print("$x and $y are both even numbers")
elseif x % 2 != 0 && y % 2 == 0
    print("$x is an odd number and $y is an even number")
elseif x % 2 == 0 && y % 2 != 0
    print("$x is an even number and $y is an odd number")
else
    print("$x and $y are both odd numbers")
end

# Since x and y are both even numbers, the first if statment/condition will be executed
```

### Boolean Values in Julia Lang

In Julia, if a statment is true, than Julia will return **true**, if the statment is false, Julia will return **false**
```julia
x = "cat"
x == "cat" # returns: true
x == "dog" # retursn: false
```
### Short Curcuit Evaluation in Julia

The operator `&&` corresponds to *and* while the `||` operator corresponds to *or*. These operators are used in Julia's [short curcuit evaluation](https://docs.julialang.org/en/v1/manual/control-flow/#Short-Circuit-Evaluation)

Take a look at the code below where we are using the *and* operator. As you can see, every thing *right* of the `&&` operators is *only* evaluated when whatever left of the `&&` operators is **true**

```julia
x = 4
y = 6
(x > y) && println("$x is greater than $y") # returns false
(x < y) && println("$y is greater than $x") # returns print statement
```

Now look at the code below where we are usign the *or* operator. As you can see, everything *right* of the `||` operators is *only* evaluated when whatever left of the `||` operators is **false**

```julia
x = 4
y = 6
(x > y) || println("$x is less than $y") # returns print statement
(x < y) || println("$y is greater than $x") # true
```
### Dangling else problem

In Julia Language, we don't have to worry about the dangling else problem. Since all of Julia's conditions end with 'end', we do not have to worry about a condition being ambiguous. 

### Switch case statements

Julia does not have any switch-case structure. You can easily manipulate a conditional statement to resemble a switch function but Julia supports switch functions through different packages (Match.jl and Switch.jl).

#### Using an if/elseif/else statement to resemble switch-case structure:

```julia
function switch_case(var)
    if var == 1
        println("one")
    end
    if var == 2
        println("two")
    end
    if var == 3
        println("three")
    end
end
 
switch_case(2) # returns "two"
```

## Sources
*You can learn more about Julia conditional statements through the following resources*
- Julia Academy Introductory Course (free): https://juliaacademy.com/courses/375479/lectures/5745524
- Julia Documentation on Control Flow: https://docs.julialang.org/en/v1/manual/control-flow/#Short-Circuit-Evaluation 
