
% Shell Logic Processing

:- use_module(library(editline)).

configura :-
    el_wrap.

le_comando(Leitura) :-
    read_line_to_string(user_input, Leitura).

processa_entrada(Entrada, Resultado) :-
    executa(Entrada).

disp(Texto) :-
    format("~w~n", Texto).

main :-
    configura,

    repeat,
        le_comando(Leitura),

        (  Leitura = "sair"
        -> disp("Ok."), !
        ;  processa_entrada(Leitura, Resultado),
           fail
        ).
