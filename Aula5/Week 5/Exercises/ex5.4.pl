%% Ex 5.4
%% Implementar fatorial em Prolog.

%% Exemplo de query:
%% ?- fat(10, X)

fat(0,1).
fat(1,1).
fat(N,NF):-
	A is N-1,
	fat(A,AF),
	NF is AF*N.
