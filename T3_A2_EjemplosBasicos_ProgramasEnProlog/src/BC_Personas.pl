
mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(diana).
mujer(vanessa).
mujer(martha).
mujer(olivia).

:- discontiguous hombre/1.
hombre(hugo). adulto(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
:- discontiguous hombre/1.
hombre(juan). ninio(juan).
hombre(pedro).
hombre(raul).
hombre(gabriel).
hombre(sergio).

madre(ana, sergio).
madre(ana, maria).
madre(ana, luis).
madre(martha, diana).
madre(olivia, raul).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gabriel).
padre(sergio, paco).
padre(hugo, sergio).

%hijos
%abuelos

% listado PADRES y MADRES de familia con sus hijos
padres_familia(X, Y) :- padre(X, Y) ; madre(X, Y).

% listado PADRES y MADRES de familia
padres(X) :- padre(X, _) ; madre(X, _).

%PAPAS
lista_padres(X) :- padre(X, _).

%MAMAS
madres(X) :- madre(X, _).

%HIJOS
hijos(Y) :- (madre(_,Y) ; padre(_, Y)) , hombre(Y).

%HIJAS
hijas(Y) :- (madre(_, Y) ; padre(_, Y)), mujer(Y).

%------------------ Actividad 2------------------------------------------

%ABUELOS
abuelos(Z, Y) :- padre(Z, X) , (padre(X, Y) ; madre(X, Y)), hombre(Z).

%ABUELAS
abuelas(Z,Y) :- madre(Z, X) , (madre(X, Y) ; padre(X, Y), mujer(Z)).

%PERSONA
persona(X) :- mujer(X) ; hombre(X). /*CONSULTA:  */

%NIETO


%NIETA


%HERMANOS


%HERMANAS


%PAREJAS
esposo(Z, Y) :- padre(Z, X) , madre(Y, X). /*CONSULTA: esposo(ESPOSO, ESPOSA). */
esposos(X, Y, Z) :- (padre(X, Z), madre(Y, Z)), hombre(X), mujer(Y). /*CONSULTA: esposos(ESPOSO, ESPOSA, HIJO). */ %Esposos con hijo