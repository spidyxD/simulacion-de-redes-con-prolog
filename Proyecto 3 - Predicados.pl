/*===============================Predicados que se piden en el proyecto===============================*/

conexion(Grafo,A,B) :- conexion1(Grafo,A,B,_,_).

conexion(Grafo,A,B,Ruta) :- conexion1(Grafo,A,B,[],0,Ruta,_).

confiabilidad(A,B,Ruta,P) :- reliable(A,B,Ruta,P).

/*===============================Predicados de ayuda===============================*/
productoC(X,Y,Z) :- Z is X * Y.
my_length([], 0).

my_length([_|Xs], L):-
          my_length(Xs, L2),
          L is L2 + 1.

/*calculaP(Origen,Destino,Ruta,Z) :-
          my_length(Ruta,L), productoC(Origen,Destino,P),
          Z is P /L.*/

nodo(Nombre) :- nodo2(_,Nombre,_).

arista(Grafo, Origen, Destino, Confiabilidad, Velocidad) :-
	Confiabilidad > 0,
	Confiabilidad =< 100,
	Velocidad > 0,
	nodo2(Grafo,Origen,_), /*El Origen debe ser un nodo*/
	nodo2(Grafo,Destino,_), /*El Destino debe ser un nodo*/
	arista2(Grafo,Origen, Destino, Confiabilidad, Velocidad).

pertenece(Nodo, Grafo) :- nodo2(Grafo, Nodo,_).

nodo_valido(Grafo,Nombre) :- nodo2(Grafo,Nombre,servidor).
nodo_valido(Grafo,Nombre) :- nodo2(Grafo,Nombre,router).
	/*
c(Grafo,A,B,W) :- nodo_valido(Grafo,A),nodo_valido(Grafo,B),arista2(Grafo,A,B,_,W).
c(Grafo,A,B,W) :- nodo_valido(Grafo,A),nodo_valido(Grafo,B),arista2(Grafo,B,A,_,W).
*/
c(Grafo,A,B,W) :- arista2(Grafo,A,B,_,W).
c(Grafo,A,B,W) :- arista2(Grafo,B,A,_,W).


conexion1(Grafo,A,B,R,W) :- conexion1(Grafo,A,B,[],0,R,W).

% El predicado que recorre el grafo
% usa recursión de cola.
% Cuando el nodo inicial pasa a ser
% el final, significa que ya se recorrió
% la conexion buscada.

conexion1(_,Z,Z,R,W,R1,W) :- append(R,[Z],R1).

% Los parámetros del predicado significan:
% - Grafo en el que me encuentro.
% - Estoy en el nodo A.
% - Me dirijo al nodo B.
% - La conexion incluye los nodos en Ar.
% - El costo de la conexion recorrida es Aw.
% - (Los parámetros R, W se arrastran desde
%    la consulta inicial y son asignados
%    en el caso trivial.)

conexion1(Grafo,A,B,Ar,Aw,R,W) :-
	A \= B, \+miembro(A,Ar),
	c(Grafo,A,C,Wac),
	W1 is Aw + Wac,
	append(Ar,[A],Br),
	conexion1(Grafo,C,B,Br,W1,R,W).

% -------------------------------------------

miembro(X,[X|_]).
miembro(X,[_|Xr]) :- miembro(X,Xr).

% ------------------------------------------
 conc([ ],V1,V2).
 conc([X|R],L2,[X|Z]):- conc(R,L2,Z).


ruta(A,B) :- n(A,B,_,_).
ruta(A,B) :- n(A,C,_,_), ruta(C,B).

ruta(A,B,[A,B]) :- n(A,B,_,_).
ruta(A,B,[A,C|R]) :-
	n(A,C,_,_),
	ruta(C,B,[C|R]).


reliable(A,B) :- n(A,B,_).
reliable(A,B) :- n(A,C,_), reliable(C,B).



reliable(A,B,[A,B],P) :- n(A,B,P,_).
reliable(A,B,[A,C|R],P) :-
        A \= B,
	n(A,C,P1,_),
	reliable(C,B,[C|R],P2),
        ruta(A,B,Ruta), my_length(Ruta,L), productoC(P1,P2,X),
        P is X.

% reliable(1,9,Ruta,Confianza).

velocidadM(A,B) :- n(A,B,_).
velocidadM(A,B) :- n(A,C,_), velocidadM(C,B).



velocidadM(A,B,[A,B],P,V) :- n(A,B,P,V).
velocidadM(A,B,[A,C|R],P,V) :-
        A \= B,
	n(A,C,P1,V1),
	velocidadM(C,B,[C|R],P2,V2),
        conc(V1,V2,X).
