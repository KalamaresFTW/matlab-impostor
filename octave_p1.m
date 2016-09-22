%%ejercicio 1.1

(3^2 + 7) / 2
%%ans = 8
2^3 - (16 * (7 + 24/3)) / (2^4 * 5)
%%ans = 5
(625)^(1/4)
%%ans = 5.000
%%separando con ',' devuelve las dos evaluaciones
%%separando con ';' devuelve la ultima evaluacion (que no tiene ';' al final)
%%format long
%%format short
%%format rat

%%ejercicio 1.2
format short; 2/3, 1.44444
format long; 2/3, 1.44444
format long e; 2/3, 1.44444
format rat; 2/3, 1.44444

%%abs -> valor absoluto
%%rat -> cociente que aproxima el numero
%%sqrt -> raiz cuadrada
%%exp -> e^x
%%log -> logaritmo neperiano
%%log10 -> logaritmo base 10
%%log2 -> logaritmo base 2

%%sin -> seno
%%cos -> coseno
%%tan -> tangente
%%csc -> cosecante
%%sec -> secante
%%cot -> cotangente
%%asin -> arcoseno
%%acos -> arcocoseno
%%atan -> aroctangente

%%%ARREPRESENTAÇOM GRÂFICA
v = [3 6 2 1 5] %vector
v'              %vector columna

%%ejercicio 1.4
v = [3 6 2 7 1 5] %hace un vector v
v(3)              %devuelve la tercera posición del vector
v([2,4])          %devuelve las posiciones 2 y 4 del vector
zeros (1,5);      %hace un vector tamaño 5 con 5 ceros
linspace(2, 10, 3)%devuelve un vector con tres posiciones
                  %con numeros equidistantes entre 2 y 10

                  