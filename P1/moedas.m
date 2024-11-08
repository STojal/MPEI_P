function [probSimulacao] = moedas(K,n,P,N)
%Calculo probabilidade de  k caras em n lacamentos simula N vezes com
%probabilidade p
% Rerurna a probabiliadade P
%usage moedas(k,n,p,N)  

%At,19 Set 2024 Mpei




experiencias = rand(n,N);

sucessos = sum(experiencias < P) ==K;


probSimulacao = sum(sucessos)/N;












end

