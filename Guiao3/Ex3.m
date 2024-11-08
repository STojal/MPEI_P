clc ,clearvars

%Aline A

Sx = [0,1,2,3,4];
Px = ones(1,5);
for i=0:4;
    Px(i+1)=moedas(i,4,0.5,1e6);
end




stem(Sx,Px)
axis([-1,5,-0.005,1])

title("fmp_x")
xlabel("Px")
ylabel("PX(x_i")

Ex =sum(Sx.*Px)
%Ex =Sx*Px'
var = sum(Sx.^2.*Px)-Ex^2
dp =sqrt(var)

%% c)

n = 4;
p = 1/2;
px = zeros(1,n);
px_t = zeros(1,n);
N = 1e5;

for X = 1:n+1
    k = X-1;
    px(X) = moedas(k,n,p,N);
    px_t(X)  = nchoosek(n,k)*p^k*(1-p)^(n-k);

end

stem(0:4, px)
hold on
plot(0:4,px_t,"+")
title("Função massa de probabilidade")
xlabel("x_i")
ylabel("pX(x_i)")

%% f)

n = 4;
p = 1/2;
px_t = zeros(1,n);
N = 1e5;
S = 0:4;

for X = 1:n+1
    k = X-1;
    px_t(X)  = nchoosek(n,k)*p^k*(1-p)^(n-k);

end

%% i

condicao = S >= 2;
prob = sum (px_t(condicao))

%% ii

condicao = S <= 1;
prob = sum (px_t(condicao))

%% iii
condicao = (S >= 1 & S<=3);
prob = sum (px_t(condicao))
    




