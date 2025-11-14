categoria(superfamilia,hominoidea).

categoria(familia,hominidea).
categoria(familia,hylobatidae).

categoria(subfamilia,homininae).
categoria(subfamilia,ponginae).

categoria(tribu,hominini).
categoria(tribu,gorillini).

categoria(genus,homo).
categoria(genus,pan).
categoria(genus,gorilla).
categoria(genus,pongo).
categoria(genus,hylobates).




descendiente(hominoidea,hominidea).
descendiente(hominoidea,hylobatidae).

descendiente(hylobatidae,hylobates).
descendiente(hylobates,gibbon).

descendiente(hominidea,ponginae).
descendiente(hominidea,homininae).

descendiente(ponginae,pongo).
descendiente(pongo,orangutan).



descendiente(homininae,gorillini).
descendiente(gorillini,gorilla).
descendiente(gorilla,gorilla).

descendiente(homininae,hominini).

descendiente(hominini,pan).
descendiente(pan,chimpanzee).
descendiente(pan,bonobo).

descendiente(hominini,homo).
descendiente(homo,human).

subfamilia(X,Y):- descendiente(A,X), descendiente(Z,A) , descendiente(B,Y), descendiente(C,B).
familia(X,Y):- descendiente(A,X), descendiente(B,A), descendiente(C,Y), descendiente(D,C).


% 1. Es el gorilla decendiente del hominini 
  %   descendiente(hominini,gorilla). = false

% 2. Es el homo hermano de gorilla
% descendiente(X,homo),descendiente(X,gorilla). = false

% 3. son el homo y el gorilla de las misma subfamilia?
%subfamilia(homo,gorilla).
%true

% 4. Tiene hominini la misma familia que pongo
%familia(hominini,pongo)
%true

% 5.QUIENES SON LOS DESCENDIENTES DIRECTOS DE UNA TRIBU
% categoria(tribu,X), descendiente(X,Y).
 % X = hominini,
 % Y = pan ;
 % X = hominini,
 % Y = homo ;
 % X = gorillini,
 % Y = gorilla.

 % 6. Cual es la superfamilia a la que pertenece hylobates
%  categoria(superfamilia,X),descendiente(X,Y),descendiente(Y,hylobates).
% X = hominoidea,
% Y = hylobatidae.

% 7. Que generos comparten la misma subfamilia de pan
% descendiente(X,pan),descendiente(Y,X), descendiente(Y,Z),descendiente(Z,B),categoria(C,B).
% X = hominini,
% Y = homininae,
% Z = gorillini,
% B = gorilla,
% C = genus ;
% X = Z, Z = hominini,
% Y = homininae,
% B = pan,
% C = genus ;
% X = Z, Z = hominini,
% Y = homininae,
% B = homo,
% C = genus.



