# The Julia Language
## Data Types and Naming Conventions

### Naming Conventions

[Naming Variables](https://docs.julialang.org/en/v1/manual/variables/)
- In Julia, naming variables may seem more flexible than other languages
- For example, you can have an emoji as a variable name
- You cannot have a variable that starts with a number
- Variable names in Julia are case sensitive

[Stylistic Conventions](https://docs.julialang.org/en/v1/manual/variables/) that the Julia Community has adopted:
- These are some useful standards when naming variables (they are not enforced by the compiler)
- Try to avoid using an underscore (_) in variable names but if your variable name is long, seperate words using an underscore
- Make variable names lowercase
- Name of functions in lowercase, no underscores

```julia
s = "This variable name is the charector s"
😀 = "You can have a varible defined as an emoji"
_ = "You can have an underscore as a variable name"
```
### Coding in Julia

Julia is *dynamically* typed, meaning, Julia will determine the type of your variable. For example:

```julia
myNum = 4
print(typeof(myNum)) # Julia will determine this to be an Int64 variable type
```
Julia is also considered a *weakly typed language*, meaning that the program will run until it breaks instead of detecting errors at compile time
An important note: unlike Python, Julia starts indexing at 1.

When programming in Julia, you will get an error if you try to add strings and integers. ex: `x = "5" + 6`. Julia will give you the following error: `MethodError: no method matching +(::String, ::Int64)`

### Built in complex data types

**Dictionaries** use the Dict keyword to make a dictionary. Dictionarys are mutable and not ordered meaning you cannot index [] locations. You also cannot have different value types in a dictionary
```julia
catsAge = Dict("Fluffy" => 4, "Snowball" => 10, "Lulu" => 2) # Julia will make this a dictionary of strings with integer values
catsAge["Grey"] = 1 # Adding to the dictionary
catsAge["Snowball"] # returns the value associated with Snowball in the catsAge dictionary
pop!(catsAge, "Snowball") # deleting values in dictionary using the pop!(dictionaryName, key) function
```
**Arrays** are created using brackets []. Arrays are an ordered sequence of elements and you are able to index. You can also have different variable types in an array
```julia
fruit = ("Strawberry", "Apple", "Blueberry", "Rasberry", "Orange", "Melon", "Kiwi") # array of strings
numbers = [4, 8, 5, 10, 14, 12] # Array of integer values
numbers_letters = [4, 'a', 6, 'w', 18, 'b'] # Array where the type is "Any". This means it can have any variable type
numbers_letters[2] # will give you 'a' since 'a' is in the second location of the list
push!(numbers, 24) # This will push a value to the end of the list
pop!(numbers) # This will remove the last value in a list
```
**Tuples** are ordered which means that we can index locations. Tuples are immutable, meaning, you cannot change contents after it has been declared
```julia
fruit = ("Strawberry", "Apple", "Blueberry", "Rasberry", "Orange", "Melon", "Kiwi")
fruit[1] # to get the first element which is "Strawberry"
```

## Sources
- Julia Academy Introductory Course (free): https://juliaacademy.com/courses/375479/lectures/5745524
- Julia Documentation for Variables: https://docs.julialang.org/en/v1/manual/variables/
- Julia Documentation for Mathematical Operators and Elementary Functions: https://docs.julialang.org/en/v1/manual/mathematical-operations/ 
- In Depth Look at Data Types in Julia, TowardDataScience.com: https://towardsdatascience.com/in-depth-look-at-data-structures-in-julia-d22171a8f5ed
