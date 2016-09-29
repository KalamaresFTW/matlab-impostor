function factorialesYcubos(n)
  if rem(n,2) == 0 && n <= 8
    factorial(n)
  elseif rem(n,2) != 0 && n<= 9
    n^3
  else disp ('el numero debe ser menor que 9')
  endif
endfunction