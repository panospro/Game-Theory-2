function PH = PrHit (D,K)
  f = @(d)(exp(-K*d));
  PH = f((0:1:D));
endfunction
