# See https://en.wikipedia.org/wiki/Fibonacci

fibonacci(n) = ([1 1 ; 1 0] ^ n)[1, 2]

cases = [
    :(fibonacci(0))
    :(fibonacci(1))
    :(fibonacci(6))
    :(fibonacci(91))
    :(fibonacci(big(283)))
    :(fibonacci(big(3674)))
]

for case in cases
    println("[ :julia-statement \"", case, " = ", eval(case), "\"].")
end
