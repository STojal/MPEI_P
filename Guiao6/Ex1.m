clc,clearvars,close all
%% Determinar o tamanho da chave
alphabet = ['a':'z' 'A':'Z'];

imin=4;
imax=12;
keyLength= randi([4 12])


%% gerar 1 chave

randonIndex=randi(length(alphabet),1,keyLength)
alphabet(randonIndex)

%%

imin=6;
imax=20;
alphabet = ['a':'z' 'A':'Z'];
N=1e4

probabilities = [
    14.63, 1.04, 3.88, 4.99, 12.57, 1.02, 1.30, 1.28, 6.18, 0.40,0.02, 2.78, 4.74, 5.05, 10.73, 2.52, 1.20, 6.53, 7.81, 4.34,4.63, 1.67, 0.01, 0.21, 0.01, 0.47
];
    
parrayChar=0;
Keys=Function(N,imax,imin,alphabet,parrayChar);
%% Create Hascodes
hashcodes = zeros(1,N);

M=5e5;
for keyIndex =1:N
    hc= string2hash(Keys{keyIndex});
    hc= mod(hc,M)+1;
    hashcodes(keyIndex)=hc;
    contagem(hc)=contagem(hc)+1

end

[a,b]=hist(contagem)
%%
hashcodes = zeros(1,N);

funcoes ={"djb2",'sdbm'};
for M=[5e5,1e6,2e6]
    for keyIndex =1:N
        hc= string2hash(Keys{keyIndex});
        hc= mod(hc,M)+1;
        hashcodes(keyIndex)=hc;

    end
    plot(1:N,hashcodes,".")
    pause(1)

end
    

%% 6.3 Filtros de Bloom

K=
bf=