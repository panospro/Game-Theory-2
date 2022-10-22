# Game-Theory-2
Using Octave to solve different problems  
## The first problem:
Two companies produce the same product. Company n produces xn ∈ [0,∞) units. The price of the product when for total production x = $x^1 +x^2$ units is P(x) = 100−2√x.
The cost per unit is $C^1(x^1)$ = $x^1$ + 10 for Company 1 and $C^2(x^2)$= $2x^2$ + 5
for firm 2. Find the profit functions, level producer NE, and the corresponding gains.

## The second problem:
There are N citizens in a country, and the n-th citizen receives $v_n$ units when
participates in a demonstration. Even though the cost of participating in the demonstration is
for each state c/k, where c > 0 and k is the number of demonstrators. Then the
return of n- to the citizen is $v_n$ −c/k when it manifests and 0 when it does not manifest.
Let c > $v_1$ > $v_2$ > ... > $v_N$ = 0. Find all NEs.

## The third problem:
N ≥ 2 firms produce the same product. Suppose that n- in the company produces $x^n$ ∈ [0,∞)
units, with the cost of producing one unitcn. The price of the product is $P(x^1 + ... + x^N)$
=100 − $x^1 + ... + x^N$ when $x^1 + ... + x^N$ ≤ 100 and $P(x^1 + ... + x^N)$ = 0 when $x^1 + ... + x^N$ > 100
let's assume that
0 < $c^1 < c^2 = c^3 = ... = c^N$
and there exists NE $\hat{x}$ = $\hat{x^1}$, $\hat{x^2}$, ..., $\hat{x^N}$ thus, for each n,
$\hat{x^1}$ $\neq$ $\hat{x^2}$ = ... = $\hat{x^N}$ .
Calculate the $\hat{x^n}$

## The fourth problem:
A duel is conducted according to the following rules. The two players $P^1$
, $P^2$ they start at a distance of D steps. Everyone has a gun with a bullet. The game
played in rounds t ∈ {1, 2, 3, ...,D}

(a) In the odd turns t ∈ {1, 3, ...}:
* The $P^1$ takes a step towards $P^2$.  
* Since $P^1$ he has a bullet, he can shoot $P^2$. The probability
to hit him (and kill him) is a function $p_1$(d), where d is
their current distance – assume that $p_1$(0) = 1 and that $p_1$(d) is
decreasing function.
* If $P^1$ shot and hit $P^2$: game over, $P^1$ wins 1 unit and $P^2$ loses 1 unit.
* If $P^1$ shot and misses $P^2$: game over, $P^1$ loses 1 unit $P^2$ wins 1 point (because players will continue to proceed and when they reach a distance d = 0, $P^2$ will shoot and
will succeed $P^1$).  
(b) In the even rounds t ∈ {2, 4, ...} the same procedure is repeated, with the
roles of $P^1$ and $P^2$ inverses (there is also a probability function $p_2$(d),
not necessarily the same as $p_1$(d))).  

## The fifth problem:  
The theme is the recurring dilemma of imprisonment. The players $P^1$ and $P^2$
will play T stages/rounds (where T can be finite or infinite) of next game stage.  
A =[(4, 4), (0, 5); (5, 0) (1, 1)].  
Players choose strategies $a^n_t$ = $σ^n$( $a^1_1$, $a^2_1$)...( $a^1_{t-1}$, $a^2_{t-1}$), where $a^n_{t}$
is motion of $P^n$ at t- in the game stage. Write $h_t$ = ( $a^1_1$, $a^2_1$)...( $a^1_{t}$, $a^2_{t}$), 
she is the history of the game up to stage t. Well, we can also write $a^n_t$ = $σ^n$( $h_{t−1}$). 
Note that we need both $h_0$ = ∅ (zero history) and $σ_n$( $h_0$)  

(a) First explain why A is a “Prisoner's Dilemma” game.  
(b) Then consider the case T < ∞ with yielding $P^n$ to be  
$Q^n$( $σ^1$, $σ^2$)= $\sum_{t=1} q^{n} ( σ^1, σ^2)$  
where $q^n$ ( $σ^1$, $σ^2$) is the performance of $P^n$ in t- in stage. Prove that the only
NE is the ( $\hat{σ^1}$, $\hat{σ^2}$)  
where $\hat{σ^n}$( $h_t$) = 2 for each n ∈ {1, 2}, t ∈ {0, 1, ...} and $h_t$ (i.e. continuous desertion).    
(c) Finally consider the case T = ∞. Now the performance of $P^n$ n will be  
$Q^n$( $σ^1$, $σ^2$)= $\sum_{t=1} γ^{t-1} q^{n} ( σ^1, σ^2)$  
γ ∈ (0, 1) is the deflation rate – we assume that the future
returns are deflated, because they do not have the same value as direct returns.
We now define the following strategy $\bar{σ^n}$.  
i. $\bar{σ^n}$ ( $h^0$) = 1. That is: in the first stage I cooperate.  
ii. For each t > 0: $σ^n$( $h_{t−1}$) = 1 if $h_{t−1}$ contains only 1, otherwise 
$σ^n$( $h_{t−1}$) = 2.
That is: at each stage t > 1, I cooperate if there was no desertion until
stage t − 1, otherwise I exit at t ( and hence also at all subsequent stages).

### To do stuff.  
i. Prove that ( $\hat{σ^1}$, $\hat{σ^2}$) is NE.  
ii. Prove that ( $\bar{σ^1}$, $\bar{σ^2}$) is also NE when γ = 1/2.  
iii. Find a $γ^∗$ so it is ( $\hat{σ^1}$, $\hat{σ^2}$) to be NE if and only if γ > $γ^*$

## To solve this,I created 5 functions:
(a) PH=PrHit(D,K) gives a PH matrix of hit probabilities for distances 0,
1, ..., D. You can choose any form of p(d; K) but it must be
decreasing and satisfy p(0; K) = 1 – use parameter K to
modify the odds of success).  
(b) [Tr,O,U0]=DuelTree(D,PH1,PH2) gives the tree Tr of the game, where O(v)
shows the player who moves when the game is at the top v
(O(v)=0 for terminal vertices) and U0(v) gives the yield at vertex v
(U0(v)=0 for non-terminal vertices).  
(c) U=BackInd(1,U0,Tr,O) gives U(v) the return on $P^1$ when the game starts
at the top v.  
(d) S=FindSucc(Tr,U,D) gives S(v) the vertex that follows v in the optimum
gameplay.  
(e) P=FindPath(1,D,S) gives P the path (sequence of vertices) to the optimal
gameplay.
