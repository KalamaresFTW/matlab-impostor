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

%%vectores
v = [3 6 2 1 5] %vector
v'              %vector columna

%%ejercicio 1.4
v = [3 6 2 7 1 5] %hace un vector v
v(3)              %devuelve la tercera posición del vector
v([2,4])          %devuelve las posiciones 2 y 4 del vector
zeros (1,5);      %hace un vector tamaño 5 con 5 ceros
                  %puede crear vectores / columnas / matrices de ceros
linspace(2, 10, 3)%devuelve un vector con tres posiciones
                  %con numeros equidistantes entre 2 y 10

%%operador dos puntos ->
%% v = primera componente[:incremento]:valor que determina la última componente
5:3:17
1/2:7/2

%%ejercicio 1.5
v = 3:-1.5:-4.5
v = linspace(3, -4.5, 6)
v([1 3 5])
v([1:2:6])

%%sum(v)
%%max(v)
%%min(v)
%%length(v)

%%ejercicio 1.6
v = [4 -sqrt(2) 2.5]
v.*v
v.^2

%%%ARREPRESENTAÇOM GRÂFICA
%% plot(x,y) dos vectores definidios con anterioridad, de misma longitud
x = [1 3]
y = [2 5]

plot(x,y)

x = [ 1 2 3 -4 5]
y = [6 -1 7 9 -2]

plot(x,y)

%%making the graphica pretty
title('poligonal')
xlabel('Eje de abscisas')
ylabel('Eje de ordenadas')
text(1,6,'(1,6)')
legend('linea poligonal')

%%making a BRAND NEW WINDOW
figure(2)
x = 0:pi/100:pi;
y = cos(x);
z = cos(3*x);
plot (x,y,x,z)

%%ejercicio 1.7
x = 0:pi/100:2*pi;    %define un vector x entre 0 y 2pi
y = sin(x);           %define un vector y como seno de x
plot(x,y)             %dibuja la gráfica de x frente a y
hold on               %hace que las siguientes órdenes aparezcan en la misma figura
z = cos(x);           %define un vector z como coseno de x
plot (x, z, 'r-.')    %dibuja la gráfica de x frente a z con la linea verde y discontinua
hold off              %deja de obligar a trabajar en ese espacio

t = 0:pi/180:2*pi;
x = cos(t);
y = sin(t);
plot(x,y);
%axis equal;
axis([-2 2 -2 2])
text(0,0,'(0,0) ciudadanos Kappa');

%%ejercicio 1.8

v = axis([-10 10 -10 10]);
hold on
plot(-4,9,'r*')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = -1:1:5;
v >= 2
(v>=2)&(v<4)

y = v(v.^2>=3)

% funcion definida a trozos:
% 1-2x si x<=-1
%(x+1)^3 + 2x si x>-1
x = linspace(-2,3,1000);
y = (1-2*x).*(x<= -1)+((x+1).^3 + 2*x).*(x>-1);
plot(x,y,'ro');
title('funcion definida a trozos')

%%bucles
org = 1;
for k = 1:10
  org,k^2
  org = org+1;
endfor


for k = 6:2:20
  k^3
endfor

k = 6:2:20
k.^3

%if
function factorialesYcubos(n)
  if rem(n,2) == 0 && n <= 8
    factorial(n)
  elseif rem(n,2) != 0 && <= 9
    n^3
  else disp ('eres parvo ou comes merda?')
  endif
endfunction

%%strings

disp(['texto1 ','texto2'])
disp(['Numero iteraciones: ', num2str(10)])

error('texto')  %% <- peta


fix(9.90)
floor(9.90)
ceil(9.90)

fprintf('cantidad %5.2f\n', 5.6789)   %normal
fprintf('cantidad %5.2e\n', 0.000051) %notacion cientifica
fprintf('cantidad %5.2g\n', 5.6789)   %basssura

a = input('introduce el valor de a: ')
a = input('introduce el valor de a: ','s')  %strings

menu('elige el algoritmo', 'dicotomia', 'Newton-Raphson')

pause (10) %espera durante 10 segundos

syms a b c
f = 3*a + 1

a = sym(1/3)

double(a)
vpa(1/3, 6)

num2str(1230.5)

clear a
clear all

findsym(a*x^2+b*x+c)

solve(3*x+15 == 0, x)
solve(a*x^2+b*x+c == 0, x)

help @sym/solve

subs(a*x^2+b*c+c,x,1)
subs(a*x^2+b*x+c,{a,b,c},{2,3,5})

%%ejercicio 1.12
syms a b c x ; solve(a*x^2 + b*x + c == 0, x)
syms a b c x ; solve(a*x^2 + b*x + c == 0, a)
[x,y,z] = solve (2*x + 2*y - z == 0, x + y + z == 3, y - z == -2)

%%ejercicio 1.13
y = (x^2 - 1)/(2*(x+4)^3); numden(y)
[num, den] = numden(y)
factor(y)
expand(den)
z = (x^2 - 1) / (x^2 + 2*x + 1); simplify(z)

%%ezplot
y = x ^ 2 + sin(3*x) - 1/2
grafica = ezplot(y,[-10,10])
set(grafica,'color','r','linestyle','-.')