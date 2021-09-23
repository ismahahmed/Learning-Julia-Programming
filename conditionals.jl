# Syntax for conditional statements:
#=
    - if
    - elseif
    - else
    - end 
=#

# One-condition if/else statement example:
x = 4

if x % 2 == 0
    println("$x is an even number")
else
    println("$x is an odd number")
end

# Short circuit evaluation using &&

x = 4
y = 6
(x > y) && println("$x is greater than $y") # returns false
(x < y) && println("$y is greater than $x") # returns print statement


#= Multi-condition if/else statement example:
Use the following logical operators in a multi-conditon statement
And: &&
Or:  ||
Not: !
=#

x = 200

if x % 2 == 0 && x > 100
    print("$x is an even number above 100")
else
    print("$x is not an even number above 100")
end

# if/elseif/else statement example:

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

#= 
Julia does not have built in switch case statements and there are currently no
plans to implement a switch case into the languge. This is a way you can imitate
a switch case in Julia:
https://discourse.julialang.org/t/a-switch-type-function/13491/3 
=#

function switch_case(var)
    if var == 1
        println("one")
    if var == 2
        println("two")
    if var == 3
        println("three")
    end
end
 
switch_case(1) 
