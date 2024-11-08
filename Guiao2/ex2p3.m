clc, clearvars,close all

probabilidadeErroAndre=0.01;
probabilidadeErroBruno=0.05;
probabilidadeErroCarlos=0.001;

ProbabilidadeA=0.2;
PrbabilidadeB=0.3;
ProbabilidadeC=0.5;


probabilidadeCarlossabendoErro=ProbabilidadeC*probabilidadeErroCarlos;
probabilidadeBrunosabendoErro=PrbabilidadeB*probabilidadeErroBruno;
probabilidadeAndresabendoErro=ProbabilidadeA*probabilidadeErroAndre;

probabilidadeERRO=probabilidadeErroAndre*ProbabilidadeA+PrbabilidadeB*probabilidadeErroBruno+probabilidadeCarlossabendoErro;

pC=probabilidadeCarlossabendoErro/probabilidadeERRO
pB=probabilidadeBrunosabendoErro/ probabilidadeERRO
pA=probabilidadeAndresabendoErro/probabilidadeERRO

%%
tic
clc, clearvars
pEA =0.01;
pEB= 0.05;
pEC =0.001;
N=1e5;
programasA = rand(20,N)<pEA;
programasB  = rand(30,N)<pEB;
programasC  = rand(50,N)<pEC;
Exp =[programasA;programasB;programasC];
programador = [1+zeros(1,20) 2+zeros(1,30) 3+zeros(1,50)];
res=zeros(1,N);
indiceres=1;

for c=1:N
    programas = Exp(:,c);
    [index,v]=find(programas==1);  
    if length(index)>0
        i=randi(length(index),1); % rand para escolher o programda com erro aleatorio
        
        res(1,indiceres) =programador(index(i)); %adcionar os resultados
        indiceres = indiceres+1;

    end



end

%calcula de untas vezes aparece cada programador
countsA = histc(res,1); 
countsB = histc(res,2);
countsC = histc(res,3);

probabilidadeA = countsA/indiceres

probabilidadeB = countsB/indiceres

probabilidadeC = countsC/indiceres
toc