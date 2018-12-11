/*
===============================Especificamos un grafo en particular===============================

Pongo todos los nombres en minusculas porque sino Prolog los reconoce como variables
*/
nodo2(grafo1,a,cliente). /*Grafo al que pertenece, nombre, tipo*/
nodo2(grafo1,b,cliente).
nodo2(grafo1,c,cliente).
nodo2(grafo1,d,cliente).
nodo2(grafo1,e,cliente).
nodo2(grafo1,f,cliente).
nodo2(grafo1,g,cliente).
nodo2(grafo1,h,cliente).
nodo2(grafo1,i,cliente).
nodo2(grafo1,j,cliente).
nodo2(grafo1,k,cliente).
nodo2(grafo1,l,cliente).
nodo2(grafo1,m,cliente). %Ni idea de porque cambia de color con la m :v
nodo2(grafo1,n,cliente).
nodo2(grafo1,o,cliente).
nodo2(grafo1,p,cliente).
nodo2(grafo1,q,cliente).
nodo2(grafo1,r,router).
nodo2(grafo1,1,servidor).
nodo2(grafo1,2,servidor).
nodo2(grafo1,3,servidor).
nodo2(grafo1,4,servidor).
nodo2(grafo1,5,servidor).
nodo2(grafo1,6,servidor).
nodo2(grafo1,7,servidor).
nodo2(grafo1,8,servidor).
nodo2(grafo1,9,servidor).
nodo2(grafo1,10,servidor).
nodo2(grafo1,11,servidor).
nodo2(grafo1,12,servidor).
arista2(grafo1,1,2,90,4). /*Grafo, Nodo1, Nodo2, Confiabilidad, Velocidad*/
arista2(grafo1,1,5,87.5,6).
arista2(grafo1,1,6,87.5,8).
arista2(grafo1,1,a,97.5,0.09).
arista2(grafo1,1,e,100,0.04).
arista2(grafo1,1,g,90,0.09).
arista2(grafo1,2,3,87.5,5).
arista2(grafo1,2,6,95,7).
arista2(grafo1,2,7,100,4).
arista2(grafo1,2,b,87.5,0.1).
arista2(grafo1,3,4,100,5).
arista2(grafo1,3,7,90,6).
arista2(grafo1,3,8,92.5,7).
arista2(grafo1,3,c,97.5,0.05).
arista2(grafo1,4,8,100,6).
arista2(grafo1,4,c,90,0.1).
arista2(grafo1,5,6,92.5,7).
arista2(grafo1,5,9,95,4).
arista2(grafo1,5,10,100,10).
arista2(grafo1,5,g,97.5,0.07).
arista2(grafo1,6,7,92.5,7).
arista2(grafo1,6,10,90,7).
arista2(grafo1,6,11,97.5,4).
arista2(grafo1,7,8,95,8).
arista2(grafo1,7,11,87.5,9).
arista2(grafo1,7,12,95,6).
arista2(grafo1,8,12,87.5,9).
arista2(grafo1,8,h,100,0.08).
arista2(grafo1,8,j,97.5,0.06).
arista2(grafo1,8,r,95,0.07).
arista2(grafo1,9,10,97.5,8).
arista2(grafo1,9,g,97.5,0.05).
arista2(grafo1,9,i,95,0.07).
arista2(grafo1,9,k,97.5,0.09).
arista2(grafo1,10,11,95,5).
arista2(grafo1,10,l,92.5,0.04).
arista2(grafo1,10,m,92.5,0.06).
arista2(grafo1,11,12,97.5,8).
arista2(grafo1,11,m,92.5,0.07).
arista2(grafo1,11,n,100,0.06).
arista2(grafo1,12,j,100,0.06).
arista2(grafo1,f,r,95,0.09).
arista2(grafo1,o,r,97.5,0.09).
arista2(grafo1,p,r,100,0.04).
arista2(grafo1,q,r,95,0.04).

n(1,2,0.99,25).
n(1,3,0.95,30).
n(1,4,0.99,20).
n(1,5,0.95,0.1).
n(2,3,0.98,40).
n(2,6,0.97,0.03).
n(2,7,0.95,0.02).
n(3,7,0.98,40).
n(3,8,0.96,0.01).
n(3,9,0.98,0.03).













