espadre(juan,jose).
espadre(juan,viki).
esmadre(carmen,jose).
esmadre(carmen,viki).

espadre(eliseo,angelica).
espadre(eliseo,javer).
espadre(eliseo,daniel).
esmadre(graciela,angelica).
esmadre(graciela,javier).
esmadre(graciela,daniel).

espadre(jose,angie).
espadre(jose,adriana).
esmadre(angelica,angie).
esmadre(angelica,adriana).

espadre(javier,monce).
espadre(javier,liz).

espadre(daniel,oscar).
espadre(daniel,isrrael).

esmadre(viki,karina).
esmadre(viki,norma).
esmadre(viki,cristian).

esmadre(norma,valeria).
esmadre(norma,fernando).

abuelo(A,B):- esmadre(A,N),esmadre(N,B).
abuelo(A,B):- espadre(A,N), espadre(N,B).
abuelo(A,B):- esmadre(A,N), espadre(N,B).
abuelo(A,B):- espadre(A,N), esmadre(N,B).

nieto(A,B):- abuelo(B,A).

hermano(A,B):- esmadre(X,A), esmadre(X,B),not(A=B).
hermano(A,B):- espadre(Y,B),espadre(Y,A), not(A=B).

sobrino(A,B):- hermano(B,N), esmadre(N,A).
sobrino(A,B):- hermano(B,N), espadre(N,A).

tio(A,B):- sobrino(B,A).

primo(A, B):- tio(N,A), esmadre(N,B), not(A=B).
primo(A,B):- tio(A,N), espadre(N,B), not(A=B).




