## y=df(x) calcula la funcion y=(cos(x)-x)'
## Author: usuario <usuario@PORTATIL>
## Created: 2016-10-13
%{
function y = df (x)
  y = -sin(x) -1;
endfunction
%}

%{
function y = df (x)
  y = 2*x ;
endfunction
%}

%{
function y = df (x)
  y = 5*x^4 -1 ;
endfunction
%}

%{
function y = df (x)
  y = -e^(-x)*(x-1);
endfunction
%}

function y = df (x)
  y = -e^(x)-6*sin(3*x);
endfunction