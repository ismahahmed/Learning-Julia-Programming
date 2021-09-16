#= Data Types in Julia
You will find examples of the following in this script:

    - Naming conventions
    - Integers / integer variable type
    - Strings / string variable type
    - Floating-point numbers 
    - Boolean
    - Arrays
    - Dictionary 
 =#

#= Naming conventions

    - In Julia, naming varibles may seem more flexible than other languages
    - For example, you can have an emoji as a variable name
    - You cannot have a variable that starts with a number
    - Variable names in Julia are case sensitive
    - Variables 

=#

s = "This variable name is the charector s"
😀 = "You can have a varible defined as an emoji"
_ = "You can have an underscore as a variable name"

#= Stylistic Conventions:
Here are 2 popular and useful stylistic convenstions when coding in Julia:
    - Variable names are lowercase
    - If the variable name is long, seperate words in a variable with an underscore: _
=#
    

# Integers, Floats and String Variables

# as you can see, julia does not require you to statically type out your variable
# since julia is dynamically typed, julia will determine the type of your variable
# check variable type using built in typeof() function
myNum = 4
print(typeof(myNum)) # Variable type: Int64

myFloat = 4.0
print(typeof(myFloat)) # Variable type: Float64

myString = "This is a string"
print(typeof(myString)) # Variable type: string

typeof('c') # Variable type: Char (charector)

s = "This is a string"
typeof(s)
s2 = """ this is a string with a "quote" inside """
typeof(s2)
#print('hello world') # this will get an error. Only charector values can use single quotes, not strings


# Changing variable types:
parse(Int64, "1") # using the parse fucntion, you can change "1" into the integer, 1

# Putting variables in a string using $:
name = "Ismah"
print("My name is $name")

# Concatenating Strings
string("Hello", " World")
# You can also use the * to join the strings
s3 = "Hello "
s4 = "World"
s3*s4


# Simple Math
adding = 4 + 8 # adding using +
print(adding)
subtracting = 12 - 4 # subtracting using -
print(subtracting)
multiplication = 2 * 2 # multiplication using *
print(multiplication)
division = 40/10 # division using /
print(division)
power = 2^2 # power using ^
print(power)
remainder = 7 % 2 # to get the remainder when doing division use %
print(remainder)

# We can add int's and floats. When doing so, Julia will do widening conversion (the answer will be in a float form)
1 + 2.0
2.0/4 # we can divide floats and integer types


#=
Dictionaries, Arrays and Tuples

Tuples and arrays are ordered sequences of elements but a dictionary is not ordered
Tuples are immutable: you cannot change to contents after it has been declared
=#

# Dictionaries: use the Dict keyword to make a dictionary
catsAge = Dict("Fluffy" => 4, "Snowball" => 10, "Lulu" => 2) # Julia will make this a dictionart of strings with integer values

# Adding to the dictionary:
catsAge["Grey"] = 1

# The following will give you an error because "1" is not an integer since it is in quotes and since this is a dictionary where the values are 
# integers, you cannot have a string value 
# catsAge["Grey"] = "1"

catsAge["Snowball"] # returns the value associated with Snowball in the catsAge dictionary
# deleting values in dictionary using the pop!(dictionaryName, key) function
pop!(catsAge, "Snowball")
catsAge # this will return the dictionary without Snowball

#=
Tuples
Since Tuples are ordered, we can index
=#

# Julia starts with 1 when indexeing (like R code) instead of 0 (like Python)

fruit = ("Strawberry", "Apple", "Blueberry", "Rasberry", "Orange", "Melon", "Kiwi")
fruit[1] # to get the first element
# fruit[1] = "Watermelon" -> will get an error becuase tuples are immutable


#= Arrays
Arrays are mutable and contain ordered sequences of elements.
In Julia, you can create an array with brackets: []
=#

# Array of strings
sports = ["Soccer", "Basketball", "Swimming", "Ballet", "Gymnastics", "Football"]
print(sports)

# Array of Integers
numbers = [4, 8, 5, 10, 14, 12]

# Array where the type is "Any". This means it can have any variable type
numbers_letters = [4, 'a', 6, 'w', 18, 'b']
# Indexing 
numbers_letters[2] # will give you 'a' since 'a' is in the second location of the list

# Push and Pop Functions:
push!(numbers, 24) # This will push a value to the end of the list
numbers # returns list with 24 at the end
pop!(numbers) # This will remove the last value in a list
numbers # return list where 24 is no longer at the end


# Boolean 
4 == 4 # true
4 == 2 # false
4!= 2 # true
4 != 4 # false

4 > 2 # true
4 < 2 # false
4 >= 2 # true
4 <= 2 # false



#= Sources that helped me learn about Data Types in Julia:
    - Julia Academy Introductory Course (free): https://juliaacademy.com/courses/375479/lectures/5745524
    - Julia Documentation for Variables: https://docs.julialang.org/en/v1/manual/variables/
    - Julia Documentation for Mathematical Operators and Elementary Functions: https://docs.julialang.org/en/v1/manual/mathematical-operations/ 
=#
