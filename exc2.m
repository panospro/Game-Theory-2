% X είναι ένα διάνυσμα μεγέθους Ν το οποίο έχει 0 και 1 αναλόγως με το εάν ο 
% πολίτης i συμμετέχει ή όχι στην πορεία.
pkg load symbolic
syms ui c
Qi = @(x)(ui - c/sum(x));
% Inductive proof
% If we have sum(x) = 0 then if it is not in the interest of citizen 1 to participate then
% it is not in the interest of the citizen i > 1 to participate since he will have ui < u1 and so
% we will have NE (0, 0, ... , 0). If it interests him to participate then he will participate
% because u1 < c (0, 0, ... ,0) is always YES
% => Suppose k citizens have participated so far and i is its number
% of last citizen who participated. To be an equilibrium point we will prove
% that it should be of the form x = [1, 1, ... ,1 , 0, 0, ... ,0]
% If it is NE then for every citizen j < i it will benefit him
% to participate in the course since it will have a higher payoff than i (uj > ui)
% and at the same time he will have less damage than citizen i since if he participates
% will have a loss c/(k+1) that is less than what i had in
% previous step, c/k. So each player j will have a larger profit and
% less damage than i so everyone will participate.

% <= even if k citizens participate and citizen i does not like it
% participating (and not participating). Then no citizen j > i is in his interest
% to participate since it will have less profit and same cost as the cost that
% player i estimated he would have and so we have xj = 0 for every j > i.
% This is how every equilibrium point of the form 1*0+ will be, i.e. from zero
% or more aces initially and then 1 or more zeros after the last one
% citizen is not interested in participating. We can have more than one point
% balance, namely [1]*i,[0]*(n-i) for each i for which
% ui >= c/i and also un-i <= c/(n-i). We will have to look into the case
% i = 0 or (since we know we will never have i = n), set
% [1]*(n - i)[0]*i with u(n - i) >=c/(n - i) and u(n - i + 1) <= c/(n - i - 1 , i = 1, 2, ... , n.


% example with 2 balance points u1 = 10, u2 = 9, u3 = 8.5, u4 = 0, c = 12
% is [0, 0, 0, 0] and [1, 1, 1, 0]

% The function function2 calculates the net NEs.
% To be an equilibrium point, dQi/dxi = 0 => + c^2/(sum(x))^2 the
% which goes to zero for xi-> infinity. But from the definition of variables we have
% x to belong to {0,1} so maximum for xi = 1. The function also has a second
% leg Qi(x) = 0 for xi = 0 so xi = 0 will be minimal (if you like
% to participate) or maximum (if it does not suit him).

% Modeling in a game with N players and each player has a matrix where at
% position x[1], x[2], ... , x[N] has Qi(x) gain. Each player has only two
% choices. Are there mixed break-even points (GEOs?)
% each player has xi chance not to go down the course and 1 - xi chance to
% goes down. 