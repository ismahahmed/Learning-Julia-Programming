# Loops and Functions in Julia programming
#=
This Julia file will have examples on different loops in
the Julia programming language as well as examples of 
functions + how to declare them!
=#

#Loops

#= While Loops:

Syntax for while loops:

while condition
    body
end
=#

# Example where the while loop prints out numbers 1-4
i = 0
while i < 4
    i += 1
    println(i)
end

# while loop iterating through an array:
fruit = ("Strawberry", "Apple", "Blueberry", "Rasberry", "Orange", "Melon", "Kiwi")
i = 1 # remember, indexing lists/arrays start with 1 in Julia Lang
println("Here is a list of my fruit: ")
while i <= length(fruit)
    println(fruit[i])
    i += 1
end

# For loops

#= 
Syntax for for loops:
    
for variable in loop iterable
    body
end
=#

# Example where the for loop prints out numbers 1-4
for i in 1:4 # when doing a for loop in Julia, we often use the `in` keyword
    println(i)
end
# you can also use `=` instead of the `in` keyword
for i = 1:4 
    println(i)
end

# For loop iterating through an array
fruit = ("Strawberry", "Apple", "Blueberry", "Rasberry", "Orange", "Melon", "Kiwi")
println("Here is a list of my fruit: ")
for item in fruit
    println(item)
end

# Matrixes using for loops
a, b = 3, 3 # matrix will be 3 by 3
m = zeros(a,b) # fill the matrix with 0's
#= Will look like this:
 0.0  0.0  0.0
 0.0  0.0  0.0
 0.0  0.0  0.0
=#
# Now populate the matrix where each cell represents the sum of the row location and column location 
for item in 1:a
    for i in 1:b
        m[item,i] = item + i
    end
end
m 

# condencing the nested for loop:
for item in 1:a, i in 1:b
    m[item, i] = item + i
end
m
# can also do:
m = [item + i for item in 1:a, i in 1:b]

# Looping through Dictionaries
catsAge = Dict("Fluffy" => 4, "Snowball" => 10, "Lulu" => 2)
for cat in catsAge
    print(cat )
end


# Now lets look at functions/how to declare them!

# Functions in Julia Lang

#= syntax for declaring a function

    There are a few different ways to declare a function in Julia
    Keywords: function, end

function name_of_fucntion(instance if applicable)
    body
end

=#
function hello(name)
    return("Hello $name !")
end
#= After running this function above, Julia returns:
hello (generic function with 1 method), 
meaning thathello is a function with 1 method/instance variable
=#

# calling a function:
h = hello("Ismah")

# Function that takes in two parameters:
function sum(a, b)
    return("The sum of $a and $b is ", a+b)
end
s = sum(1,2)

#= syntax for declaring a function in 1 line
name_of_fucntion(instance if applicable) = body
=#
hello2(name) = return("Hello $name !")
h2 = hello2("Ismah")

sum2(a,b) = return("The sum of $a and $b is ", a+b)
s2 = sum2(2,2)

# Anonomous/lamda functions
#= Syntax of Anonomous functions:
name_of_fucntion = instance -> body
=#
hello3 = name -> return("Hello $name !")
h3 = hello3("Ismah")

sum3 = (a,b) -> return("The sum of $a and $b is ", a+b)
s3 = sum3(2,2)

# Mutating vs Non Mutating functions
#= 
What is the differences between mutating and non mutating 
functions and how are they used? Functions that follow that
! charector make it so that it alters what ever contents 
given. However, without the ! charector, the contents will
not be permenently alterned. What does this mean? Lets see
an example using the sort and sort! function:
=#

my_nums = [6, 2, 4, 8]
sort(my_nums) # will output the sorted list
m = my_nums # but if you were to print the list again, the original one will display

my_nums = [6, 2, 4, 8]
sort!(my_nums) # will output the sorted list
m = my_nums # sort! also changes the ordering of the original list


# Recursive function
#=
You are able to perform recursive functions in Julia but like python,
you should avoid large recursive functions. It does tend to get messy and
may not run correctly.
=#
function recur_factorial(n)
    if n == 1
        return n
    else
        return n*recur_factorial(n-1)  
    end
end

# Splitting String Function Example:
function splitString(string)
    s = split(string, " ")
    return(s)
end

splitString("Hello World")

# Multiple return values
#=
Does Julia allow multiple return values? The answer is yes!
The following function takes in a list as a parameter and 
returns 2 values. The first value is a tuple with the 
minimum value in the list as well as the index. The second 
value is also a tuple which is the maximum value in the list as 
well as its index
=#

function minmax(l)
    mi = findmin(l)
    ma = findmax(l)
    return mi, ma
end

num = [4, 7, 2, 1, 8]
minmax(num)


# Checking if Julia is pass-by-reference or pass-by-value
function add1(x)
    x = x + 1
end

x = 5
add1(x)
println(x) # this seems to indicate pass-by-value

# How about arrays?
function push1(list)
    push!(list, 1)
end

x = [5, 4, 3, 2]
push1(x)
println(x) # this seems to indicate pass-by-reference