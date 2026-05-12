% Ejercicio 1
max(X,Y,X):-
    X >= Y.

max(X,Y,Y):-
    Y >= X.

% Ejericio 2
reinado('Carlos II', 1665, 1700).
reinado('Felipe V', 1700, 1724).
reinado('Luis I', 1724, 1724).
reinado('Felipe V', 1724, 1746).

rige(Persona,N):-
    reinado(Persona,A,B),
    A =< N,
    N =< B.

rige(Persona, N, H):-
    N =< H,
    reinado(Persona,A,B),
    A =< N,
    H =< B.

% Ejercicio 3
% Definicion de los tiempos verbales
tiempo(presente).
tiempo(pasado).
tiempo(futuro).

% Definicion de las personas gramaticales
persona(primera).
persona(segunda).
persona(tercera).

% Definicion de los numeros gramaticales
numero(singular).
numero(plural).

% Definicion de la conjugacion del verbo "to be"
ser(presente, primera, singular, "am").
ser(presente, segunda, singular, "are").
ser(presente, tercera, singular, "is").
ser(presente, primera, plural, "are").
ser(presente, segunda, plural, "are").
ser(presente, tercera, plural, "are").

ser(pasado, primera, singular, "was").
ser(pasado, segunda, singular, "were").
ser(pasado, tercera, singular, "was").
ser(pasado, primera, plural, "were").
ser(pasado, segunda, plural, "were").
ser(pasado, tercera, plural, "were").

ser(futuro, primera, singular, "will be").
ser(futuro, segunda, singular, "will be").
ser(futuro, tercera, singular, "will be").
ser(futuro, primera, plural, "will be").
ser(futuro, segunda, plural, "will be").
ser(futuro, tercera, plural, "will be").

% Conjugacion del verbo "to be"
conjugar_verbo(Verbo, Tiempo, Persona, Numero, Conjugacion):-
    tiempo(Tiempo),
    persona(Persona),
    numero(Numero),
    (
        Verbo = "to be" ->
    ser(Tiempo, Persona, Numero, R),
    Conjugacion = R;
    Conjugacion = Verbo
).