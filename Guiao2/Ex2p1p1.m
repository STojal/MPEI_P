clc, clearvars,close all


NumeroRapazes =1;
n=2; % numero total de filhos 
N=1000000;
Probailidade =0.5;
experiencias = rand(n,N);
sucessos = sum(experiencias < Probailidade)>=NumeroRapazes;

probSimulacao = sum(sucessos)/N
%%
%Alinea C
clc, clearvars,close all

NumeroRapazes =2;
n=2; % numero total de filhos 
N=1000000;
Probailidade =0.5;
experiencias = rand(n,N)<Probailidade;

sucessos = sum(experiencias)==NumeroRapazes;
NumeroDeCasosPosiiveis =  sum(experiencias)>=1;
probSimulacao = sum(sucessos)/sum(NumeroDeCasosPosiiveis)

% a probabilidade do segumdo ser rapaz é independente do sexo do primeiro

%%
%Alinea D
clc, clearvars,close all
NumeroRapazes =2;
n=2; % numero total de filhos 
N=1000000;
Probailidade =0.5;
experiencias = rand(n,N)<Probailidade;

sucessos = sum(experiencias)==NumeroRapazes;
NumeroDeCasosPosiiveis =  sum(experiencias(1,:));
probSimulacao = sum(sucessos)/sum(NumeroDeCasosPosiiveis)




%%
%Alinea E

clc, clearvars,close all

NumeroRapazes =2;
n=5; % numero total de filhos 
N=1e7;
Probailidade =0.5;
experiencias = rand(n,N);
sucessos = sum(experiencias > Probailidade)==NumeroRapazes;
NumeroDeCasosPosiiveis =  sum(experiencias)>=1;

probSimulacao = sum(sucessos)/sum(NumeroDeCasosPosiiveis)

%%
%Alinea F

clc, clearvars,close all

NumeroRapazes =2;
n=5; % numero total de filhos 
N=1e7; %Casos possiveis 
Probailidade =0.5;
experiencias = rand(n,N);
sucessos = sum(experiencias < Probailidade)>=NumeroRapazes;
NumeroDeCasosPosiiveis =  sum(experiencias)>=1;

probSimulacao = sum(sucessos)/sum(NumeroDeCasosPosiiveis)