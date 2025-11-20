% comparar area de circulo
area_circulo(Radio,Area):- Area is pi * Radio **2 .
comparar_area(10,12, Resultado).
comparar_area(Radio,Limite,Resultado):-
area_circulo(Radio,Area),
(Area > Limite -> Resultado ='Mayor';
Area =:= Limite -> Resultado ='Igual';
Resultado ='Menor'
).

%Comparar perimnetro de un cuadrado
comparar_perimetro(Lado,Limite,Resultado):-
Perimetro is Lado * 4,
(Perimetro > Limite -> Resultado='Mayor';
Perimetro =:= Limite -> Resultado ='Igual';
Resultado = 'Menor'
).

/*comparar_perimetro(4,12,Resultado).
Resultado = 'Mayor'.
*/

%verifiar si el numero es positivo
comparar_numero(X,R):-

(X > 0 -> R = 'Es positivo';
X < 0-> R='Es negativo';
X = 0 -> R='Es igual a 0'
).

/* comparar_numero(-3,R).
R = 'Es negativo'.
*/

%Comparar la raiz cuadrada con un valor 
comparar_raiz(X,Y,R):-
Raiz is sqrt(X),
(Raiz > Y -> R='Mayor';
Raiz < Y -> R='Menor';
Raiz =:= Y -> R ='Es igual'
).

/*- comparar_raiz(25,5,R).
R = 'Es igual'.
*/
%Calcular el area de un triangulo
area_triangulo(X,Y,R):-
A is (X * Y)/2,
(A > 50 -> R='Mayor';
A < 50 -> R='Menor';
R='Igual'
/*
 area_triangulo(10,20,R).
R = 'Mayor'.

?- area_triangulo(5,10,R).
R = 'Menor'.

?- area_triangulo(10,10,R).
R = 'Igual'.
*/

).

%Verificar si un numero es par o impar 
comparar_par(X,R):- 
A is X mod 2,
(A =:= 0 -> R='Par';
A \= 0 -> R='Impar'
).

/*
comparar_par(3,R).
R = 'Impar'.

?- comparar_par(2,R).
R = 'Par'.
*/

comparar_log(X,Y,R):-  
 A is log(X)/log(2),
 (A > Y -> R='Mayor';
 A < Y -> R='Menor';
 R ='Igual'
 ).

 /*
  comparar_log(2,1,R).
R = 'Igual'.

?- comparar_log(2,100,R).
R = 'Menor'.
 */


comparar_potencia(X,Y,R):-
A is X ^ Y,
(A > 100 -> R='Mayor';
A < 100 -> R='Menor';
R='Igual'
).
/*

comparar_potencia(100,2,R).
R = 'Mayor'.

?- comparar_potencia(10,2,R).
R = 'Igual'.

?- comparar_potencia(5,2,R).
R = 'Menor'.
*/


