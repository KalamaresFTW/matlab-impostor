##y=new_rap(x) calcula la funcion y=cos(x)-x
##Pablo Aragunde  2016.10.13
##Llamada a la función del estilo:
##new_rap(@f, @df, 0, 1.0e-10,100)
##donde f y df son la función y su derivada, 0 es el punto inicial, 1.0e-10
##es la tolerancia de error, y 100 el número máximo de iteraciones.
##
##Para obtener tanto la aproximación como el número de iteraciones realizadas,
##llamar a la función del estilo:
##[raiz, num_iter] = new_rap(@f,@df,0,1.0e-10,100)
function [y,n_it]= new_rap(f,df,x0, tol, max_it)
  y = x0;
  for k = 1:1:max_it
    dy = df(y); %guardamos el valor de la derivada en el punto y
    if (dy~=0)  %comprobamos que existe derivada en ese punto y es distinta de 0
      y_1 = y;  %guardamos el valor de la función en el punto "anterior"
      y = y - (f(y)/dy);  %cálculo de la iteración
      err = abs(y-y_1);   %cálculo del error
      fprintf(['y(' int2str(k) ') = %5.10f'],y);
      fprintf([' | err(' int2str(k) ') = %1.4e \n'],err);
      if (err < tol)
        n_it = k; %si el error es menor que la tolerancia terminamos
        return
      endif
    else
      error (['la derivada es cero en y (' int2str(k) ')'])
    endif
  endfor
  %caso de que el bucle termine sin que el error sea menor que la tolerancia
  n_it = max_it;
endfunction
