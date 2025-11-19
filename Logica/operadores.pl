%suma
ejemplo_suma(X,Y, R) :- R is X +Y.
%Resta
 %ejemplo_suma(10,2,R).
%R = 12.

ejemplo_resta(X,Y, R) :- R is X - Y.
%Multiplicacion
%ejemplo_resta(10,2,R).
%R = 8.

ejemplo_multiplicacion(X,Y, R) :- R is X * Y.
%ejemplo_multiplicacion(3,4,R).
%R = 12.

%dIVISION REAL O ENTERA 
ejemplo_division(X,Y, R) :- R is X div Y.
ejemplo_division(X,Y, R) :- R is X / Y.
%ejemplo_division(4,2,R).
%R = 2.

%resta de la division 
restadiv(X,Y, R) :- R is X mod Y.
%- restadiv(5,3,R).
%R = 2.

%ELEVADO
elevado(X,Y, R) :- R is X ^ Y.
% elevado(2,3,R).
%R = 8.

%negacion
negacion(X,R) :- R is -X.
%negacion(3,R).
%R = -3.

%valor absoluto
absoluto(X,R) :- R is abs(X).
%absoluto(3,R).
%R = 3.

%arcocoseno
arco_coseno(X,R) :- R is acos(X).
%  arco_coseno(0.5,R).
%R = 1.0471975511965979.

%arco seno
arco_seno(X,R) :- R is asin(X).
%arco_seno(0.5,R).
%R = 0.5235987755982989.

%arco tangente 
arco_tangente(X,R) :- R is atan(X).
%arco_tangente(0.5,R).
%R = 0.4636476090008061.

%coseno
coseno(X,R) :- R is cos(X).
% coseno(0.5,R).
%R = 0.8775825618903728.

%exponencial
exponencial(X,R) :- R is exp(X).
%exponencial(3,R).
%R = 20.085536923187668.

%logaritmo neperiano 
neperiano(X,R) :- R is log(X)/log(2).
%neperiano(3,R).
%R = 1.5849625007211563.

%logaritmo base 2
log(X,R) :- R is log(X)
%log(3,R).
%R = 1.0986122886681098.


%SENO
seno(X,R) :- R is sin(X).
%seno(0.5,R).
%R = 0.479425538604203.

%sqrt
sqrt(X,R) :- R is sqrt(X).
% sqrt(9,R).
%R = 3.0.

%tangente
tangente(X,R) :- R is tan(X).
% tangente(0.5,R).
%R = 0.5463024898437905.

%redondeo
redondeo(X, N, R) :-
    % Multiplica X por 10^N, redondea al entero más cercano y luego divide por 10^N
    Factor is 10**N,
    Z is X * Factor,
    ZA is round(Z),
    R is ZA / Factor.
%redondeo(3.5,3,R).
%R = 3.5.

%menor que
menor_que(X,Y, R) :- R is X < Y.

%mayor que 
mayor_que(X,Y, R) :- R is X > Y.

%menor o igual que y 
menor_igual(X,Y, R) :- R is X = Y.

%mayor o igual que 
mayor_igual(X,Y, R) :- R is X => Y.

%es igual que 
igual(X,Y, R) :- R is X = Y.

%es distinto que 
igual(X,Y, R) :- R is X \= Y.


%a expresion es igual que la expresion y 
expresion_igual(X,Y, R) :- R is X == Y.

%la expresion x es distinta que la expresion y
expresion_distinta(X,Y, R) :- R is X \== Y.

%x es menor que 
menor_que_prolog(X,Y, R) :- R is X @< Y.

%x es mayor  que prolog
mayor_que_prolog(X,Y, R) :- R is X @> Y.

%menor o igual que prolog 
menor_igual_prolog(X,Y, R) :- R is X @=< Y.

%mayor o igual que prolog 
mayor_igual_prolog(X,Y, R) :- R is X @>= Y.




















