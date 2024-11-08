clc, clearvars

Pdefeito =1/1000;
X=7
n=8000
Px=nchoosek(n,X)*(Pdefeito)^X*(1-Pdefeito)^(n-X)

%%
% Poisson
Pdefeito =1/1000;
X=7
n=8000
la =n*Pdefeito

Px = (la^X*exp(-la))/factorial(X)
