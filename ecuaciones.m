function y (a, b, c)
  if a==0
    disp('la ecuacion es de grado 1')
    y = -c/b
  else
    disp('la ecuacion es de grado 2')
    if b^2-4*a*c >=0
      disp('y las raices son reales')
    else
      disp('y las raices son complejas')
   endif
  endif
endfunction