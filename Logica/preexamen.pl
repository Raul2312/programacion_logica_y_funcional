red(red1).
red(red2).

topologia(red1, estrella).
topologia(red2, bus).

velocidad(red1, 1000).
velocidad(red2, 100).

pertenece(smayor,red1).
pertenece(smayor,red2).

pertenece(red1,switchred1).
pertenece(switchred1,pc1).
pertenece(switchred1,pc2).
pertenece(switchred1,pc3).
pertenece(switchred1,pc4).


pertenece(red2,pc5).
pertenece(red2,pc6).
pertenece(red2,pc7).
pertenece(red2,s1).

pertenece(red1,pc1).
pertenece(red1,pc2).
pertenece(red1,pc3).
pertenece(red1,pc4).


dispositivo(pc1).
dispositivo(pc2).
dispositivo(pc3).
dispositivo(pc4).

dispositivo(pc5).
dispositivo(pc6).
dispositivo(pc7).

dispositivo(switchred1).
dispositivo(s1).

%--------------------------------------------------------------------------------------

% Desarrolle los hechos en base a la imagen.

% 1 Muestre las PCs de la topología de estrella (red1).
%  pertenece(switchred1,X).
% X = pc1 ;
% X = pc2 ;
% X = pc3 ;
% X = pc4.

%-------------------------------------------------------------------------------------
%  2 Desarrolle una regla que determine si un dispositivo pertenece a una red.

es_de_red(Red,Dispositivo) :- pertenece(Red,Dispositivo).

%?- es_de_red(red1,pc1).
%true.

%?- es_de_red(red1,pc5).
%false.

%?- es_de_red(red2,pc5).
%true.


%--------------------------------------------------------------------------------------
% 3 ¿Puede el S1 enviar ping a la pc2?

ping(Dispositivo1,Dispositivo2) :- 
pertenece(Red,Dispositivo1),
pertenece(Red,Dispositivo2).


%?- ping(pc1,pc5).
%false.

%?- ping(pc1,pc3).
%true .

%?- ping(pc1,s1).
%false.

%?- ping(pc5,s1).
% true.

%---------------------------------------------------------------------------

% Invente una regla.
velocidad_total(Red,Red2,R):-
velocidad(Red,V),
velocidad(Red2,Y),
 A is V + Y,
 R =A .

 % velocidad_total(red1,red2,R).
%R = 1100.




%-------------------------------------------------------------------------------
% Invente una regla que utilice una expresión aritmética.
velocidad_dispositivo(Red, Dispositivo, R) :-
pertenece(Red,Dispositivo),
velocidad(Red, V),
 A is V / 4,
 R = A.

%  velocidad_dispositivo(red1,pc1,R).
%R = 250.

%?- velocidad_dispositivo(red1,pc5,R).
%false.

%-----------------------------------------------------------------------------------


% Invente una regla que utilice un comparador.
mayor_velocidad(Red,Red2,R) :-
velocidad(Red,V),
velocidad(Red2,Y),
( V > Y -> R='La primera es Mayor';
V < Y -> R='La segunda es mayor';
 V =:= Y -> R = 'Ambas redes tienen la misma velocidad'
).

% mayor_velocidad(red1,red2,R).
% R = 'La primera es Mayor'.



