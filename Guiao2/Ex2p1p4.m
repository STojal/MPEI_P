%%
%Exerciio 4 A 
clc, clearvars


n = 99; % N dardos
m=365; %N alvos 
N=1e6; %numero de casos

experiencias = randi(m,n,N);
length(unique(experiencias(:,1)))
casosFav =0;
for i=1:N
    if length(unique(experiencias(:,i)))==n
        casosFav =casosFav +1;


    end
end
probabilidade = 1- casosFav/N



%%
%Exerciio 4 B
clc, clearvars


n = 0;   

m = 365;   
N = 1e6;   
p_desejada = 0.9;  %probabilidade de haver aniversarios juntos 
p = 1;   % probabilidade de nao haver pesoas com o aniversario no mesmo dia

while p > (1 - p_desejada)
    n =n+ 1 ;
    % escolha de aniversarios (m - n + 1) / m
    p = p * (m - n + 1) / m;
end

n