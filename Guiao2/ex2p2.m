clc , clearvars ,close all

tic


n = 2; % N de lancamentos
m=6; %N possivel no dado
N=1e6; %numero de casos

experiencias = randi(m,n,N);

somadosvalores = sum(experiencias,1);
casosFavA = sum(somadosvalores==9);

CasosFavB = sum(mod(experiencias(2,:),2)==0);


casosFavC = sum(sum(experiencias==5)>=1);
casosFavD = sum(sum(experiencias==1)<1);


probabilidadeA = casosFavA/N
probabilidadeB = CasosFavB/N
probabilidadeC = casosFavC/N
probabilidadeD = casosFavD/N
toc
%%
%dependencia
clc , clearvars ,close all

tic


n = 2; % N de lancamentos
m=6; %N possivel no dado
N=1e6; %numero de casos

experiencias = randi(m,n,N);



somadosvalores = sum(experiencias,1);
casosFavAB = sum(((somadosvalores==9) + (mod(experiencias(2,:),2)==0))==2);
CasosFavB = (mod(experiencias(2,:),2)==0);
casosFavC = sum(experiencias==5)>=1;
casosFavD = sum(experiencias==1)<1;
casosFavCD = sum(casosFavC&casosFavD);


probabilidadeAB = casosFavAB/N

probabilidadeCD = casosFavCD/N
toc