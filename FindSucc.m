function S = FindSucc (Tr, U, D, O)
  % Changed the arguments again and we have the array O as an argument
  % which tells node n which player
  % plays so we can also know if he will play for max
  % or minimum PayOff for Player 1.
  i = D;
  S = [D];
  for i =1:length(Tr)
    % Table of vertices we can go to.
    succ = Tr(i).next;
    if O(i) == 1
    % of every node we have a player playing we have 2 children
      if U(succ(1)) > U(succ(2))
        S(i) = succ(1);
      else
        S(i) = succ(2);
      endif
    elseif O(i) == 2
      if U(succ(1)) < U(succ(2))
        S(i) = succ(1);
      else
        S(i) = succ(2);
      endif
    else
      % is a terminal node, we do not have vertex succession
      % we set them to have next vertex 0, which does not exist
      % if we had started counting vertices from 0 we would set for them
      % terminals the -1
      S(i) = 0;
    endif
  endfor
endfunction
