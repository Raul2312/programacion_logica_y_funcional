valioso(oro).
valioso(plata).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).
% Diagrama
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).

%Es ana tia de jaime?
%PROGENITOR(x,ana),progenitor(Y,X),progenitor(Y,Z).
% X = jose,
% Y = patricia.

%es ana tia de isabel
% progenitor(X,ana),progenitor(X,Y),progenitor(Y,isabel). = false


