jefe(mark,sherly).

jefe(sherly,david).
jefe(sherly,timothy).
jefe(sherly,mike).
jefe(sherly,eliot).
jefe(sherly,lori).

jefe(eliot,rebecca).
jefe(eliot,heather).


%¿Quién es el jefe del Rebecca?
%jefe(X,rebecca). = eliot

%¿Es  jefe Mark del jefe de Rebecca?
%jefe(X,mark),jefe(X,rebecca). = false

%¿Es Lori jefe de alguien?
%jefe(lori,X). = false

%Mostrar empleados del jefe de Heather
%jefe(X,heather),jefe(X,Y). 
%X = eliot,
%Y = rebecca ;
%X = eliot,
%Y = heather.


 %¿Es Timothy  jefe de Rebecca?
% jefe(timothy,rebecca). = false 


 %Mostrar  compañeros de  nivel de Mike
%jefe(X,mike),jefe(X,Y).
% X = sherly,
% Y = david ;
% X = sherly,
% Y = timothy ;
% X = sherly,
% Y = mike ;
% X = sherly,
% Y = eliot ;
% X = sherly,
% Y = lori.

 %¿Es el jefe de Rebeca compañero de nivel de  David?
%jefe(X,rebecca),jefe(Y,david),jefe(Y,Z).
% X = eliot,
% Y = sherly,
% Z = david ;
% X = eliot,
% Y = sherly,
% Z = timothy ;
% X = eliot,
% Y = sherly,
% Z = mike ;
% X = Z, Z = eliot,
% Y = sherly ;
% X = eliot,
% Y = sherly,
% Z = lori.


 %¿Es compañero de nivel Mike de Lori
%jefe(X,mike),jefe(Y,lori)
%X = Y, Y = sherly.
