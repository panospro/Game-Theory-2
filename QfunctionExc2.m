% The function Q for citizen i
function PayOff = QfunctionExc2 (i, x, ui, c)
  if x(i)
    PayOff = ui - c/sum(x);
  else
    PayOff = 0;
  endif

endfunction
