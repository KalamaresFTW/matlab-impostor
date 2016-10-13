%%Práctica 2 - Método de Newton-Raphson

%al algoritmo visto en clase se le añade el criterio de parada:
%|(xk)-(xk-1)| < tol (tolerancia

%graphics_toolkit('gnuplot')

%%Ejercicio 1
%{
Representar y = cos(x) e y = x en [-pi,pi]
%}
x = -pi:pi/200:pi;
plot(x, cos(x));
hold on
plot(x,x,'r-.-');
axis([-pi pi -pi pi]);
legend('y = cos(x)', 'y = x')