%%
%Ex 3A e b
clc , clearvars ,close all




n = [10,20,50,100]; % N Keys
m=1000; %N array 
N=1e6; %numero de casos


for i=1:length(n)
    p(i)=1-dardos(n(i),m,N);
    i=i+1;
end

plot(n,p)
%%
%Exerciio 3 c
clc, clearvars ,close all

n = 50; % N Keys
m=[100:100:500]; %N array 
N=1e5; %numero de casos


for i=1:length(m)
    p(i)=1-dardos(n,m(i),N);
    i=i+1;
end

plot(m,p)