%y=new_rap(x) calcula la funcion y=cos(x)-x
%Pablo Aragunde  2016.10.13
function [y,n_it]= new_rap(f,df,x0, tol, max_it)
  y = x0;
  for k = 1:1:max_it
    dy = df(y);
    if (dy~=0)
      y_1 = y;
      y = y - (f(y)/dy);
      err = abs(y-y_1);
      fprintf(['y(' int2str(k) ') = %5.10f'],y);
      fprintf([' | err(' int2str(k) ') = %1.4e \n'],err);
      if (err < tol)
        n_it = k;
        return
      endif
    else
      error (['la derivada es cero en y (' int2str(k) ')'])
    endif
  endfor
  n_it = max_it;
endfunction
