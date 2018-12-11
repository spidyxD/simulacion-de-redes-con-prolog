
c(arco(a,b,0.95,4)).
c(arco(b,c,0.98,2)).
c(arco(a,c,0.97,3)).
c(arco(b,e,0.95,0.02)).

grafo(G) :- findall(A,c(A),G).

conectados(Grafo,X,Y) :-
	grafo(Grafo),
	append(_,[arco(X,Y,_,_)|_],Grafo).

velocidad(G,X,Y,V) :-
	grafo(G),
	append(_,[arco(X,Y,_,V)|_],G).
	
confiabilidad(C) :-
	grafo(G),
	append(_,[arco(_,_,C,_)|_],G).