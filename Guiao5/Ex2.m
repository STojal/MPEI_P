 

clc,clearvars

ALLDATA=readcell("PL5Ex2(in).csv");

Caracteristicas = ALLDATA(1,2:end-1);

X=ALLDATA(2:end,2:end-1);
X=cell2mat(X);
classes=categorical(ALLDATA(2:end,end));
probabilidade =0.7;

permutacao =randperm(size(X,1));
numL=round(size(X,1)*probabilidade);

Treino=X(permutacao(1:numL),:);
TreinoClasses=classes(permutacao(1:numL));
Teste=X(permutacao(numL+1:end),:);
TesteClasses=classes(permutacao(numL+1:end));


%P("ok")
email_ok=sum(TreinoClasses=='OK');
PNeg=email_ok/length(TreinoClasses);

%P("SPAM")
email_spam=sum(TreinoClasses=="SPAM");
PPos=email_spam/length(TreinoClasses);


% probabilidade das caracteristicas postivas sabendo ue Interessa
%ocorrencia das palvaras uando é positivo
Treino_Classe_OK=  Treino(TreinoClasses=='OK',:);

%casos favoraveis casos possiveis 
totalPalvras=size(Treino_Classe_OK,1) ;
prob_caracteristica_dado_positivo = sum(Treino_Classe_OK)/totalPalvras;


% probabilidade das caracteristicas negativas sabendo ue Nao Interessa
%ocorrencia das palvaras uando é positivo
Treino_Classe_Neg= Treino(TreinoClasses=='SPAM',: );
%casos favoraveis casos possiveis 
totalPalvras_Neg= size(Treino_Classe_Neg,1);
prob_caracteristica_dado_Neg = sum(Treino_Classe_Neg)/totalPalvras_Neg;

for i=1:size(Teste,1)
    vetor_teste=Teste(i,:);
    prbPos=1;
    prbNeg=1;
    for p=1:length(vetor_teste)
        
        if vetor_teste(p)~=0
        prbPos= prbPos*prob_caracteristica_dado_positivo(p);
        end
        if vetor_teste(p)~=0
        prbNeg= prbNeg*prob_caracteristica_dado_Neg(p);
        end
        
    end 
    PSerNegativo = prbNeg*PNeg;
    PSerPos = prbPos*PPos;
    if(PSerNegativo<PSerPos)
        fprintf("Resultado Obtido para o %d  OK resultado esperado %s\n",i,TesteClasses(i))
    else
        fprintf("Resultado Obtido para o %d  Spam resultado esperado %s\n",i,TesteClasses(i))
    end

end