

% Aline A 
clc , clearvars ,close all




n = 20; % N dardos
m=100; %N alvos 
N=1e6; %numero de casos

experiencias = randi(m,n,N);

length(unique(experiencias(:,1)))
casosFav =0;
for i=1:N
    if length(unique(experiencias(:,i)))==n
        casosFav =casosFav +1;


    end
end
probabilidade = casosFav/N


%%
%Alinea B 
clc , clearvars ,close all




n = 20; % N dardos
m=100; %N alvos 
N=1e6; %numero de casos

experiencias = randi(m,n,N);

length(unique(experiencias(:,1)))
casosFav =0;
for i=1:N
    if length(unique(experiencias(:,i)))~=n
        casosFav =casosFav +1;


    end
end
probabilidade = casosFav/N

%%
clc, clearvars ,close all
m=1e5;
N =1e4;
i=1;
for n=10:10:100
    p(i)=1-dardos(n,m,N);
    i=i+1;
end
plot(n,p, 'b.')


%%
%2 D
m =[200,500,1000,2000,5000,10000,20000,50000,100000];
n=100;
N =1e4;
i=1
for i=1:length(m)
    p(i)=1-dardos(n,m(i),N);
    i=i+1;
end
plot(m,p)



