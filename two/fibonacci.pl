% See https://en.wikipedia.org/wiki/Fibonacci_number

fibonacci(A,B) :-
    fibonacci(A,0,1,B).

fibonacci(0,A,_,A).
fibonacci(1,_,A,A).
fibonacci(A,B,C,D) :-
    A > 1,
    E is A-1,
    F is B+C,
    fibonacci(E,C,F,D).

% test cases
case(fibonacci(0,_ANSWER)).
case(fibonacci(1,_ANSWER)).
case(fibonacci(6,_ANSWER)).
case(fibonacci(91,_ANSWER)).
case(fibonacci(283,_ANSWER)).
case(fibonacci(3674,_ANSWER)).

test :-
    case(A),
    A,
    writeq(A),
    write('.\n'),
    fail.
test :-
    halt.
