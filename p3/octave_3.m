%%PRÁCTICA 3

%{
Ejercicio
Sea la función h(x) = 2*x / (1+2^(x+1))
a) Estudia la existencia de asíntotas de la función.
b) Analiza si h tiene algún extremo relativo y también absoluto.
c) Representa, para valores de x entre -10 y 10 la función h junto con sus asín-
totas y los ejes de coordenadas, de forma que el color y el trazo de línea uti-
lizados para representar las rectas difieran de los que presente la curva. In-
cluye en el dibujo las ecuaciones de las asíntotas, identificando cada una de
ellas. Además, resalta los extremos que hayas encontrado.
%}
syms h x
h = 2*x / (1+2^(x+1))
[num,den] = numden(h)
%guardamos el denominador en den
solve(den ==0)
%comprobamos si el denominador se anula -> no se anula

%comprobamos si hay asíntotas horizontales
limit(h,x,inf)  %y=0 es una asíntota horizontal cuando h tiende a +inf
limit(h,x,-inf)

%comprobamos si hay asíntotas oblícuas
limit(h/x,inf)
limit(h/x,-inf) %y=2x+n es una asíntota oblícua

%comprobamos extremos
solve(diff(h) == 0)
c = double(solve(diff(h) == 0))

subs(diff(h,2),x,c) %máximo relativo

%comprobamos extremos absolutos
double(subs(diff(h),x,1.5)) %creciente
double(subs(diff(h),x,2))   %decreciente
%la función crece hasta c y después decrece y se queda en la asíntota horizontal
%y=0. Máximo absoluto c, min absoluto /E

%c)
ezplot(h,[-10,10])
hold on
plot([-10,10],[0,0],'r.-')
title('hueheuh')
plot([-10,10],[-20,20],'g-.')
legend('h(x)','y=0','y=2*x')
hc=double(subs(h,x,c))
plot(c,hc,'r*')
text(1.5,1,'MAX')

%{
Ejercicio 1
Sea la funcion g(x) = sqrt((x^3)/(x+1))
a) Halla el dominio de g y encuentra sus asíntotas. Justifica tu respuesta con
los límites necesarios.
b) Encuentra y clasifica los extremos relativos de g. Estudia si esta función
tiene algún extremo absoluto.
c) Representa la función g junto con sus asíntotas y los ejes de coordenadas
para valores de x entre -2pi y pi. Hazlo de forma que los ejes, las asíntotas y
la curva presenten colores y trazo de líneas diferentes. Incluye además en el
dibujo las ecuaciones de las asíntotas, identificando cada una de ellas. Resalta
también los extremos encontrados.
%}
g =  sqrt((x^3)/(x+1))

%a)
limit(g,x,-1)
limit(g,x,-1,'right') %g a la derecha de -1 no existe. no está definida en -1,0
limit(g,x,-1,'left')  %g a la iquierda de -1 tiende a +inf

%{
Ejercicio 2
Se considera la función h(x) = x + (9/sqrt(x^2+1))
a) Analiza si h tiene alguna asíntota. En caso afirmativo, escribe su ecuación.
Justifica tu respuesta.
b) Estudia si la función h tiene algún punto de inflexión. Encuentra el subcon-
junto de los números reales en que la función es convexa, y también el intervalo
en el que h es cóncava.
c) Representa la curva de la ecuación y = h(x) con la(s) asíntota(s) encontra-
da(s), para los valores de la variable x pertenencientes al intervalo [-10,10].
Hazlo de forma que la curva presente un color y trazo de línea diferentes al
empleado para dibujar la(s) recta(s). Incorpora también texto al dibujo identi-
ficando la(s) asíntota(s), y además resalta los puntos de inflexión.
%}

%{
Ejercicio 3
Se considera la función h(x) = log(sqrt(2*x^3 + 3*x^2))
a) Encuentra el conjunto de los números reales donde h es continua.
b) Estudia si esta función tiene alguna asíntota, hallando los límites necesa-
rios para justificar tu respuesta.
c) Analiza y clasifica los extremos relativos de h. Estudia si la función tiene
extremos absolutos.
d) Representa, para valores de x entre -3/2 y 2pi, la función h con el eje OX y
sus asíntotas, en el rectángulo del plano [-2,7] x [-4,4]. Hazlo de manera que
la gráfica del eje OX, la de las asíntotas y la de la curva presenten un color
y un trazo de línea diferentes. Incorpora también texto en el dibujo identifi-
cando cada una de las asíntotas con la ecuación correspondinte. Resalta también
los extremos encontrados.
%}

%{
Ejercicio 4
Sea la función g(x) = x/(1 + e^(3/(x^2+1)))-1
a) Estudia si g tiene alguna asíntota. Representa g(x) con su(s) asíntota(s)
para valores de x pertenecientes al intervalo -2pi,2pi, en colores distintos y
con trazo de línea diferente.
b) Calcula la derivada de g. Observando la expresión obtenida, analiza el creci-
miento de la función y estudia la existencia de extremos, relativos y absolutos.
c) Calcula la derivada segunda de g. A la vista del resultado obtenido, encuen-
tra un punto de infelxión de g. Justifica tu respuesta con los resultados del
Cálculo Diferencial.
d) Incorpora a la gráfica del apartado a) el punto de inflexión obtenido, e in-
troduce texto para identificar el correspondiente punto en la gráfica de g, y
también la(s) asíntota(s) representada(s).
%}

%{
Ejercicio 5
Se considera la función h(x) = (x^2 - 3)/(x^2 + 8*x + 16)
a) Estudia si h tiene alguna asíntota, calculando los límites necesarios para
justificar tu respuesta. Elabora una representación en la que aparezca la gráfi-
ca de h con sus asíntotas para valores de x pertenecientes al intervalo [-15,10]
de forma que la curva y las rectas presenten colores y trazos de línea diferen-
tes. Incorpora también el texto con las ecuaciones de las asíntotas, identifi-
cando cada una de ellas.
b) Encuentra y clasifica los extremos relativos de h.
c) Analiza la concavidad de h y la existencia de puntos de inflexión.
d) En una ventana gráfica independiente a la que corresponde al apartado a) y de
manera qeu las dos puedan observarse a la vez, representa la curva para valores
de x entre -10 y 10, resaltando en el dibujo los extremos y los puntos de in-
flexión encontrados incluyendo además texto para identificarlos.
%}

%{
Ejercicio 6
Sea la función f dada por f(x) = (1 - 2*x)/(x^2 - 5*x + 6)
a) Estudia si f tiene alguna asíntota. Calcula los límites necesarios para jus-
tificar tu respuesta.
b) Elabora una representación en la que aparezcan la gráfica de f y la de sus
asíntotas para valores de x entre 0 y 5, de forma que las rectas presenten colo-
res y trazo de lína diferentes a los empleados para dibujar la curva. Incorpora
además texto al dibujo con las ecuaciones de las asíntotas, identificando cada
una de ellas.
c) Encuetra y clasifica los extremos relativos de f.
d) Analiza la concavidad de f y estudia la existencia de puntos de inflexión.
e) En una ventana gráfica independiente a la correspondiente al apartado b) y de
manera que ambas ventanas puedan observarse al mismo tiempo, representa la fun-
ción f para valores de x pertenecientes al intervalo [-4,3], resaltando en el
dibujo los extremos y puntos de inflexión encontrados e incluyendo además texto
para identificarlos.
%}