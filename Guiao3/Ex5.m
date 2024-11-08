clc ,clearvars

%Para 4 motores
Nmotores=4;
Sx = 0:1:Nmotores;
p = 0.02;
Px = ones(1,5);
Nrepeticoes =1e6;
for i=0:4;
    % usar a funcao das moedas para verificar se contem erro
    
    Px(i+1)=moedas(i,Nmotores,p,Nrepeticoes);
end


condicao = Sx >= 2;
probPara4Motores = sum (Px(condicao))


Nmotores=2;
for i=0:4;
    % usar a funcao das moedas para verificar se contem erro
    
    Px(i+1)=moedas(i,Nmotores,p,Nrepeticoes);
end


condicao = Sx >= 2;
probPara2Motores = sum (Px(condicao))

