derivado(iswim,sasli).
derivado(iswim,ml).
derivado(iswim,hope).

derivado(sasli,krc).

derivado(krc,mirada).
derivado(hope,miranda).
derivado(ml,miranda).

derivado(miranda,haskell).

derivado(haskell,mondrian).
derivado(haskell,haskellmas).
derivado(haskell,ohaskell).

usuarios(mondrian,1000).
usuarios(haskellmas,1100).




%Definir los hechos de los lenguajes derivados de ISWIM siguiendo el orden de las flechas (Valor 30 puntos) 

%------------------------------------------------------------------------------
%Muestre los derivados de ML. (Valor 10 puntos)

derivado_ml(X,Hijo,Nieto,Bisnieto):- derivado(X,A),derivado(A,B),derivado(B,Y),
Hijo=A,
Nieto=B,
Bisnieto=Y.

%derivado_ml(ml,Hijo,Nieto,Bisnieto).
% Hijo = miranda,
% Nieto = haskell,
% Bisnieto = mondrian ;
% Hijo = miranda,
% Nieto = haskell,
% Bisnieto = haskellmas ;
% Hijo = miranda,
% Nieto = haskell,
% Bisnieto = ohaskell.

%-----------------------------------------------------------------------------------------------
%¿Es hijo KRC de C++? (devolverá true o false; Valor 10 puntos)

hijo(X,Y):-derivado(X,Y).

% hijo(cmas,krc).
%false.

%-------------------------------------------------------

%¿Es Mondrian lenguaje hermano de Haskell++? (devolverá true o false; Valor 10 puntos) 


hermano(X,Y):- derivado(A,X), derivado(A,Y).
% hermano(mondrian,haskellmas).
%true.

%----------------------------------------------------------


%Invente una regla. (Valor 10) 


tiene_nietos(Lenguaje, Nieto) :- derivado(Lenguaje, Hijo), derivado(Hijo, Nieto).
%tiene_nietos(hope,Nieto).
%Nieto = haskell.

%?- tiene_nietos(sasli,Nieto).
%Nieto = mirada.

%?- tiene_nietos(ml,Nieto).
%Nieto = haskell.

%-----------------------------------------------------------------------------------------


%Invente una regla que utilice una expresión aritmética. (Valor 15)  

usuarios_totales(Lenguaje1,Lenguaje2,R):-
usuarios(Lenguaje1,V),
usuarios(Lenguaje2,Y),
 A is V + Y,
 R =A .

 %usuarios_totales(mondrian,haskellmas,R).
%R = 2100.

%-----------------------------------------------------------------------

%Invente una regla que utilice un comparador. (Valor 15)  
mayor_usuarios(Lenguaje1,Lenguaje2,R):-
usuarios(Lenguaje1,V),
usuarios(Lenguaje2,Y),
( V > Y -> R='El primer lenguaje tiene mas usuarios';
V < Y -> R='El segundo lenguaje tiene mas usuarios';
 V =:= Y -> R = 'Tienen la misma cantidad de usuarios'
).


%mayor_usuarios(mondrian,haskellmas,R).
%R = 'El segundo lenguaje tiene mas usuarios'.
