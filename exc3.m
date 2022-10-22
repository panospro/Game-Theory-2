% We want to consider a particular case where xi=x2 for every i >= 2
% Thus we will consider the function of two variables
P = @(x1,x2,N)(100 -x1 - (N-1)*x2); % if total product over
% 100 then P is set to zero
pkg load symbolic
syms x1 x2 
% The code is indicative for N = 3
N = 3;
dP1 = matlabFunction(diff(P(x1,x2,N)*x1));
dP2 = matlabFunction(diff(P(x1,x2,N)*x2, x2));
x1 = (0:1:ceil(100/(N-1)));
x2 = x1';
[X1, X2] = meshgrid (x1, x2);
dp1 = dP1(X1,X2);
dp2 = dP2(X1,X2);
V = dp1.*dp1 + dp2.*dp2;
figure()
surf (X1, X2, V);
colormap ("spring");
xlabel("X1")
ylabel("X2")
zlabel("Q1(x1,x2)")
title("Η γραφική παράσταση της V")
shading interp
colorbar
[i, j] = find(V == min(min(V)));
x1opt = X1(i,j)
x2opt = X2(i,j)



