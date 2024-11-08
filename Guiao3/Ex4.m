clc ,clearvars

%Aline A
Sx = [0,1,2,3,4,5];
Px = ones(1,6);
for i=0:5;
    % usar a funcao das moedas para verificar se contem erro
    
    Px(i+1)=moedas(i,5,0.3,1e6);
end
%valor o grafico da funcao massa probabiliadade
subplot(1,2,1)
stem(Sx,Px)
axis([-1,6,-0.005,0.5])
xlabel("N amostras com erro")
ylabel("Probabilidade")







%funcao da distribuicao aculumada
psumx= cumsum([0 0 0 Px 0 0 0]);
newSX = [-2 -1 0 Sx 6 7 8];

subplot(1,2,2)

stairs(newSX,psumx)

xlabel("N amostras com erro")
ylabel("Probabilidade acumulada")
%limites do grafico
axis([-1,7,-0.005,1.2])
%%
%i

condicao = Sx <= 2;
probMax2 = sum (Px(condicao))

%% Analiticamente 
clc ,clearvars
n = 5;
p = 0.3;
px = zeros(1,n);
px_t = zeros(1,n);
N = 1e5;
Sx=[0:n]
for X = 0:n
    k = X;
    px(X+1) = moedas(k,n,p,N);
    px_t(X+1)  = nchoosek(n,k)*p^k*(1-p)^(n-k);

end

stem(0:5, px)
hold on
plot(0:5,px_t,"+")
title("Função massa de probabilidade")
xlabel("N amostras com erro")
ylabel("Probabilidade acumulada")
axis([-1,6,-0.005,0.5])
%%
%i

condicao = Sx <= 2;
probMax2 = sum (px_t(condicao))