
%% isto esta mal acho
X = 1 %variavel aleatoria 1 boneco com defeito em 8
Sx=[0,1,2,3,4,5,6,7,8];
Px = ones(2,length(Sx));
ErroMontagem= ones(1,length(Sx));
P1=0.002;
P2=0.05;
NumeroDeRepeticoes=100000
for i=0:length(Sx)-1
    Px(1,i+1)=moedas(i,8,P1,NumeroDeRepeticoes);
    Px(2,i+1)=moedas(i,8,P2,NumeroDeRepeticoes);
    ErroMontagem(1,i+1)=moedas(i,8,0.01,NumeroDeRepeticoes);
end
% como PX de 1 e indemepnde de PX2 a sua interseeção é igual a soma dos
% dois
(Px(2,1)+Px(2,2))*ErroMontagem(1,2)

%%
clc
X=1;
N=1e6;
P1=0.002;
P2=0.05;
Pa=0.01;
Perrototal=zeros(1,N);
for i=1:N
    Erropec1=rand(1,8)<P1;
    Erropec2=rand(1,8)<P2;
    bonecoErro=sum([Erropec1;Erropec2])>=1;
    ErroMontagem=rand(1,8)<Pa;
    bonecoErro(ErroMontagem==1)=1;
    Numerototaldeerros=sum(bonecoErro);
    Perrototal(i)=Numerototaldeerros/8;
end
sum(Perrototal)/N
%%
clc,clearvars
X=1
N=1e6

N=1e7
P1=0.002;
P2=0.05;
Pa=0.01;
Perrototal=zeros(1,N);
for i=1:N

    ErroMontagem=rand(1,8)<Pa;
    Perrototal(i)=sum(ErroMontagem);
end
MedianumeroDeErrosMontagem = sum(Perrototal)/N

%% Exercicio 2
clc, clearvars
N=1e6

P1=0.002;
P2=0.05;
Pa=0.01;
Perrototal=zeros(1,N);
for i=1:N
    Erropec1=rand(1,8)<P1;
    Erropec2=rand(1,8)<P2;
    bonecoErro=sum([Erropec1;Erropec2])==0;
    ErroMontagem=rand(1,8)<Pa;
    bonecoErro(ErroMontagem==1)=1;
    Numerototaldeerros=sum(bonecoErro);
    Perrototal(i)=Numerototaldeerros/8;
end
sum(Perrototal)/N