function P = FindPath(D, S)
  % Since the optimal paths are defined there is no point in having an argument
  % with the player. If we want the 2nd player to start he should
  % call again and rebuild the game with changed their positions
  % arguments PH1, PH2.
  % We will set P to be a path so it will be an array of Nodes.
  % Specifically, Node P(i) has next P(i+1) and we define P(1) = D
  P = [D];
  while S(P(end)) != 0
    P(end + 1) = S(P(end));
  endwhile
endfunction
