function U = BackInd (n, U0, Tr, O)
  % The function arguments were changed to make sense ie
  % the first argument const 1 became equal to n and shows us for
  % which of the 2 players are we looking for the PayOff
  N = length(Tr);
  % initially we pass the values for all termination nodes
  
  U = [];
  for i = (N:-1:1)
    if U0(i)
      U(i) = U0(i);
    endif
  endfor
  
  % then starting from the beginning we find O(n) for non
  % terminal nodes. So we don't have to look back,
  % with dynamic programming we have less computation time and
  % we use the data we already have
  for i = (1:1:N)
    if O(i) == 1
      U(i) = max(U(Tr(i).next));
    elseif O(i) == 2
      U(i) = min((U(Tr(i).next)));
    endif
  endfor   
  if n == 2
    U = -U;
  endif
endfunction
