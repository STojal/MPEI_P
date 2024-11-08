clc, clearvars,close all
tic
NumeroCaras =2;
n=15;
N=1000000;
P =0.5;
K=6;
experiencias = rand(n,N);

sucessos = sum(experiencias > P)==K;


probSimulacao = sum(sucessos)/N
toc




%%
%Ex3
clc, clearvars,close all
tic
n=15;
N=1000000;
P =0.5;
K=6;
experiencias = rand(n,N);

sucessos = sum(experiencias > P) >K;


probSimulacao = sum(sucessos)/N
toc

%%
%Ex4
clc, clearvars,close all
tic
n=15;
N1=20;
N2=40;
N3=100;
P =0.5;
K=6;
experiencias = rand(n,N);

sucessos = sum(experiencias > P) >K;


probSimulaca<o = sum<<(sucessos)/N
toc

%%
clc, clearvars,close all

n1 =100
for k=0:n1
    p(k+1) = moedas(k,n1,0.5,1e4);
end
stem(0:n1,p,'*')

%% Codigo 2- ca´lculo analı´tico de probabilidade em se´ries experieˆncias de Bernoulli
% Dados relativos ao problema 1
p = 0.5;
k = 2;
n = 3;
prob= nchoosek(n,k)*(p^k)*(1-p)^(n-k); % nchoosek(n,k)= n!/(n-k)!/k!
%%
%6 
clc, clearvars,close all

probDef  = 0.30;
n=5; %numero da amostra 
k=2; %numero de pecas defeituosoas
N = 1e7; %numero de rep
sucessos = sum(rand(n,N) < probDef) <=k;
Prob = sum(sucessos)/N


%%
clc,clearvars,close all
v = [ (1:200)' , (200:-1:1)', (((1:200)+(200:-1:1))/2)']
%%
clc,clearvars,close all
tic
A = [0:10];
for i=10:10:90
    NewLine = [i:i+10];
    A = [A;NewLine];

end
A
toc
%%
clc,clearvars,close all
tic
A= [1:10000];
A= reshape(A,100,100)
toc