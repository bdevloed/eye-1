% Generating deep taxonomy

:- use_module(library(between)).
:- use_module(library(format)).

main :-
    open('dt.pl',write,Out),
    write(Out,'% Deep taxonomy\n'),
    write(Out,'% See http://ruleml.org/WellnessRules/files/WellnessRulesN3-2009-11-10.pdf\n'),
    write(Out,'\n'),
    write(Out,'isDefinedBy(type/2,\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\').\n'),
    write(Out,'\n'),
    write(Out,'type(z,class(n0)).\n'),
    (   between(0,9999,I),
        J is I+1,
        format(Out,"type(X,class(n~d)) :- type(X,class(n~d)).~n",[J,I]),
        format(Out,"type(X,class(i~d)) :- type(X,class(n~d)).~n",[J,I]),
        format(Out,"type(X,class(j~d)) :- type(X,class(n~d)).~n",[J,I]),
        fail
    ;   true
    ),
    write(Out,'\n'),
    write(Out,'% test cases\n'),
    write(Out,'case(type(_,class(n1))).\n'),
    write(Out,'case(type(_,class(n10))).\n'),
    write(Out,'case(type(_,class(n100))).\n'),
    write(Out,'case(type(_,class(n1000))).\n'),
    write(Out,'case(type(_,class(n10000))).\n'),
    write(Out,'\n'),
    write(Out,'test :-\n'),
    write(Out,'    case(A),\n'),
    write(Out,'    A,\n'),
    write(Out,'    write(A),\n'),
    write(Out,'    write(\'.\'),\n'),
    write(Out,'    nl,\n'),
    write(Out,'    fail.\n'),
    write(Out,'test :-\n'),
    write(Out,'    halt.\n'),
    close(Out),
    halt.
