# The Julia Language
## Background Information

#### Programming Language name:

Julia | The Julia Programming Language

#### When and where was Julia created, and by whom?

The Julia programming language was created by  Jeff Bezanson, Stefan Karpinski, Viral B. Shah and Alan Edelman in the year 2009. They wanted to create an open source language that was powerful in a wide range of elements: speed, general programming, statistical modeling and more. Julia 1.0 was debuted at the Massachusetts Institute of Technology (MIT). The Julia programming language is also a powerful tool in Data Science and Machine Learning. 

#### What types of programming is Julia primarily used for?

Julia is a general purpose language but it is especially powerful data analysis/statistical modeling. The official Julia language site has listed different [project ideas](https://julialang.org/jsoc/projects/) to choose from based on areas of interest. 

#### Here are some resources on the Julia Language:

- [Julia Language Official Site](https://julialang.org)
- [Julia 1.6 Documentation](https://docs.julialang.org/en/v1/)
- [Download Julia](https://julialang.org/downloads/)
- [Julia Lang Package Search](https://juliahub.com/ui/Packages)
- [List of Books](https://julialang.org/learning/books/)
- [Official Youtube for Julia](https://www.youtube.com/user/JuliaLanguage)
- [Using Julia in Visual Studio Code](https://code.visualstudio.com/docs/languages/julia) 


## Getting Started


#### Installing Julia

I downloaded the Julia 1.6 straight from the official [website](https://julialang.org/downloads/). Julia 1.6 is the current stable release. For my computer, I downloaded mac OS 64 bit. 

After downloading, I [added Julia to the Path](https://discourse.julialang.org/t/hi-trying-to-add-julia-to-the-path-on-my-mac-book-pro/24369/4) on my Mac Book Pro computer. 
I ran the following in my MacOS terminal:
`ln -fs "/Applications/Julia-1.6.app/Contents/Resources/julia/bin/julia" /usr/local/bin/julia`
I also added the Julia extension created by julialang onto my VS Code.

#### Programming Environments

I will personally be using VS Code but you can also use Juno, Jupyter, Pluto.jl, Vim, Emacs...etc. I am using VS Code because it is free and opensource and it has the extension.
This [blog](https://blog.devgenius.io/what-is-the-best-ide-for-developing-in-the-programming-language-julia-484c913f07bc) lists a few of the best IDE for developing in Julia. 

#### Running Programs

VS Code command *Run: Start Without Debugging (Ctrl+F5)* runs the currently active Julia file.
[Running code in Julia REPL:](https://www.julia-vscode.org/docs/stable/userguide/runningcode/) lists a few ways to run the program:
- Julia: Execute Code (Ctrl+Enter)
- Julia: Execute Code Block (Alt+Enter)
- Julia: Execute Code Cell (Shift+Enter)
Julia: Execute File

#### Hello World in Julia

Similar to Python and R, to print *Hello World* in julia, run:

```julia
print(hello world)
```

#### How do you write comments in Julia?

The `#` symbol is used to make single line comments. The `#=` symbols are used to make multi line comments. To end a multiline comment, do =#
