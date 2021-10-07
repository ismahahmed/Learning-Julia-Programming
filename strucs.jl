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

struct Student
    s::Person
    major 
end


function adult(p::Person)
    if p.age >= 18
        return true
    else
        return false
    end
end

function printMajor(s::Student)
    return("My major: $(s.major)")
end


p1 = Person("Sam", 14) 
println(p1.name) 
println(p1.age)  
println(adult(p1))

p2 = Person("Bob", 18) 
println(p2.name) 
println(p2.age)  
println(adult(p2))


s1 = Student(Person("Sally", 19), "Computer Science")
println(s1.major) 
println(getMajor(s1))