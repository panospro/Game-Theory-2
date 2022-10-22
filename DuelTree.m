function [Tr, O, U0] = DuelTree (D, PH1, PH2)
  % Array Tr will contain structs nodes. struct Nodes have 3 fields
  % Node: our node id
  % previus: previous Nodes. If not present the field is equal to null(1)
  % next: next Nodes. If not present the field is equal to null(1)
  % each node has n (id) belonging to [1, length(Tr)]
  Tr = [];
  O = [];
  U0 = [];
  for i = 1:D
  % Define non-terminal vertices
    t.Node = i;
    O(i) = mod((D - i),2) + 1;
    % zero sum game so sum of Payoff = 0, so table
    % line with Player 1's Payoffs
    U0(i) = 0;
    if i > 1
      t.next = [i - 1, D + i + 1];
    else
      t.next = [D + 1,i + D + 1];
    endif
    
    if(i<D)
      t.previous = i + 1;
    else
      t.previous = null(1);
    endif  
    
    Tr = [Tr, t];   
  endfor
  % Add the termination nodes
  % For each position j > D in the table Tr ie for each node with id > D we have
  % terminal node. If the player shoots from distance d then we go to
  % node D + d + 1. We also need to add the node for d = 0 where
  % game over.
  t0.Node = D + 1;
  t0.previous = 1;
  t0.next = null(1);
  Tr = [Tr, t0];
  O(D + 1) = 0;
  % we have the payoffs of player 1 in U0
  % if the distance is even then player 2 will take the last step
  % and player 1 will shoot him and win. Otherwise for d = 0
  % player 2 wins
  U0(D + 1) = (-1)^D;
  for i=(D+2:1:2*D+1)
    t.Node = i;
    t.previous = i - D - 1;
    t.next = null(1);
    Tr(i) = t;
    O(i) = 0;
    if (O(i - D - 1) == 1)
    % The PHi arrays start at distance d = 0 so in position i they have the
    % Payoff for distance d - 1
      U0(i) = PH1(i - D) - (1 - PH1(i -D));
    else
      U0(i) = -PH2(i - D) + (1 - PH1(i - D));
    endif
  endfor
  
endfunction
