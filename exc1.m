% The profit function for the 2 firms will be Q1, Q2
% respectively = profit - cost where the profit function will be its function
% of price multiplied by products and the cost function for each
% company will be C1 and C2 respectively
P = @(x)(100 - 2*sqrt(x));
C1 = @(x)(x + 10);
C2 = @(x)(2*x+5);
Q1 = @(x1,x2)(P(x1+x2).*x1 - C1(x1));
Q2 = @(x1,x2)(P(x1+x2).*x2 - C2(x2));
pkg load symbolic
syms x1 x2
Q1d = matlabFunction(diff(Q1(x1,x2),x1));
Q2d = matlabFunction(diff(Q2(x1,x2),x2));
% To find the NE, player 1 should not have x1' such that
% increases Q1d for while player 2 plays x2 and correspondingly player 2 to
% have no move x2' that increases Q2d while player 1 does not change
% strategy
x1 = (0:1:2000);
x2 = x1';
[X1, X2] = meshgrid (x1, x2);
q1 = Q1(X1,X2);
figure()
surf (X1, X2, q1);
colormap ("spring");
xlabel("X1")
ylabel("X2")
zlabel("Q1(x1,x2)")
title("Η γραφική παράσταση της συνάρτησης κέρδους Q_1")
shading interp
colorbar
q2 = Q2(X1,X2);
figure()
surf (X1, X2, q2);
colormap ("spring");
xlabel("X1")
ylabel("X2")
zlabel("Q1(x1,x2)")
title("Η γραφική παράσταση της συνάρτησης κέρδους Q_2")
shading interp
colorbar
Z1 = Q1d(X1,X2);
% Diagrams for Q1d, Q2d entered as comments, reader can
% uncomment to see the corresponding diagrams
##figure()
##surf (X1, X2, Z1);
##xlabel("X1")
##ylabel("X2")
##zlabel("Q1d(x1,x2)")
##shading interp;
Z2 = Q2d(X1,X2);
##figure()
##surf (X1, X2, Z2);
##shading interp;
##xlabel("X1")
##ylabel("X2")
##zlabel("Q1d(x1,x2)")
V = Z1.*Z1 + Z2.*Z2;
figure()
surf (X1, X2, V);
colormap ("jet");
xlabel("X1")
ylabel("X2")
zlabel("Q1d(x1,x2)^2 + Q2d(x1,x2)^2")
title("Η γραφική παράσταση της V(x1,x2) = Q_1d(x1,x2)^2 + Q_2d(x1,x2)^2.")
shading interp
colorbar
% Finally, to algebraically find the equilibrium chemistry we can since we have
% rate of change of Q1, Q2 solve the differential to find Q1, Q2
% and then solve the 2 equations in terms of x1, x2.
% Nevertheless, since x1, x2 are integers, we proceed from the tables to find the
% index i,j in which we have minimum and this will represent
% productions
[i, j] = find(V == min(min(V)));
x1opt = X1(i,j)
x2opt = X2(i,j)
% and we will have corresponding profits
Q1(x1opt, x2opt)
Q2(x1opt, x2opt)
% The Qid functions are very close to 0, but do not zero as the
% x1, x2 which zero them out are not integers
% Q1d(x1opt,x2opt)
% Q2d(x1opt,x2opt)