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

new_rap(@f,@df,-1,1.0e-10,100);
%%Ejercicio 7
function [y,n_it]= new_rap(f,df,x0, tol, max_it)
  y = x0;
  v = [y];
  for k = 1:1:max_it
    dy = df(y);
    if (dy~=0)
      y_1 = y;
      y = y - (f(y)/dy);
      v = [v;y];
      err = abs(y-y_1);
      fprintf(['y(' int2str(k) ') = %10.10f'],y);
      fprintf([' | err(' int2str(k) ') = %1.4e \n'],err);
      if (err < tol)
        n_it = k;
          plot(v',v,'ro')
        return
      endif
    else
      error (['la derivada es cero en y (' int2str(k) ')'])
    endif
  endfor
  n_it = max_it;
  plot(v',v,'ro')
endfunction

%Ejercicio 8
%1) x^2-9=0, x0 = 0.1
  new_rap(@f,@df,0.1,1.0e-10,1000);
  %y = 3 
  %n = 10
%2) x^5-x-1=0, x0 = 10
  new_rap(@f,@df,10,1.0e-10,1000);
  %y = 1.1673039783 
  %n = 15
%3) x*e^(-x)=0, x0 = 0.1
  new_rap(@f,@df,0.1,1.0e-10,1000);
  %y = -4.93038065763132e-032
  %n = 5
%4) 2*cos(3*x) - e^x x0=0.1 x0= 1.5
  new_rap(@f,@df,0.1,1.0e-10,1000);
  %y = 0.2820321839
  %n = 6
  new_rap(@f,@df,1.5,1.0e-10,1000);
  %y = -3.6694400010
  %n = 12
