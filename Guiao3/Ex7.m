clc ,clearvars
%Alinea A
NMenPerS=15
n=4
X=0;% Variavel aleatoria N mesnagem recebidas em 4 segundos 

lambda=n*NMenPerS;
Px = (lambda^X* exp(-lambda))/ factorial(X)




%%

%Alinea b
NMenPerS=15
n=4
X=0:1:40;% Variavel aleatoria N mesnagem recebidas em 4 segundos 

lambda=n*NMenPerS;
Px = (lambda.^X .* exp(-lambda)) ./ factorial(X)

1-sum(Px)
