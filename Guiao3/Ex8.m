clc , clearvars ,close all
lambdaPerPage=0.02 % de uma pagina;
n=100 % numero de paginas desejadas
lambdaTotal =0.02*n;
X=1;
Y=0;
% p(y=0 ou y=1 ) =p(Y=0) +p(Y=1) -p(Y=0 e Y=1) como a intercesao é igual a
% zero e so a soma  a interceção é dijunta
Px = (lambdaTotal^X*exp(-lambdaTotal))/factorial(X)+(lambdaTotal^Y*exp(-lambdaTotal))/factorial(Y)
