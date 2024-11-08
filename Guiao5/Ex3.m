%% Dados de Treino:
clc,clearvars
 % Caracter´ ısticas
 % [Acao?, Comedia?, Duracao, Num Avaliacoes positivas]
  X = [1 0 1 1;
 0 1 0 0;
 0 1 0 1;
 1 0 1 1;
 1 1 0 1;
 0 1 0 0];
 classes = categorical({'Interessa', 'Nao Interessa', 'Interessa','Interessa', 'Interessa','Nao Interessa'});

%P("nao interrsa")
filme_neg=sum(classes=='Nao Interessa');
PNeg=filme_neg/length(classes);

%P("Interessa")
filme_pos=sum(classes=="Interessa");
PPos=filme_pos/length(classes);


% probabilidade das caracteristicas postivas sabendo ue Interessa
%ocorrencia das palvaras uando é positivo
Treino_Classe=  X(classes=='Interessa',:);

%casos favoraveis casos possiveis 
ocorrencia_palavras = sum(Treino_Classe) ;
totalPalvras=size(Treino_Classe,1) ;
prob_caracteristica_dado_positivo = ocorrencia_palavras/totalPalvras;


% probabilidade das caracteristicas negativas sabendo ue Nao Interessa
%ocorrencia das palvaras uando é positivo
Treino_Classe_Neg= X(classes=='Nao Interessa',:);
%casos favoraveis casos possiveis 
ocorrencia_palavras_Neg = sum(Treino_Classe_Neg) ;
totalPalvras_Neg= size(Treino_Classe_Neg,1);
prob_caracteristica_dado_Neg = ocorrencia_palavras_Neg/totalPalvras_Neg;


%% Testes
vetor_teste = [1,0,1,1];
prb=1;
for p=1:length(vetor_teste)
    if vetor_teste(p)~=0
    prb= prb*prob_caracteristica_dado_Neg(p);
    end
    
end 
PSerNegativo = prb*PNeg


prb=1;
for p=1:length(vetor_teste)
     if vetor_teste(p)~=0
    prb= prb*prob_caracteristica_dado_positivo(p);
    end
end 
PSerPos = prb*PPos

%%
vetor_teste = [0,1,0,0];
prb=1;
for p=1:length(vetor_teste)
    if vetor_teste(p)~=0
    prb= prb*prob_caracteristica_dado_Neg(p);
    end
    
end 
PSerNegativo = prb*PNeg


prb=1;
for p=1:length(vetor_teste)
     if vetor_teste(p)~=0
    prb= prb*prob_caracteristica_dado_positivo(p);
    end
end 
PSerPos = prb*PPos
%%
vetor_teste = [1,1,0,0];
prb=1;
for p=1:length(vetor_teste)
    if vetor_teste(p)~=0
    prb= prb*prob_caracteristica_dado_Neg(p);
    end
    
end 
PSerNegativo = prb*PNeg


prb=1;
for p=1:length(vetor_teste)
     if vetor_teste(p)~=0
    prb= prb*prob_caracteristica_dado_positivo(p);
    end
end 
PSerPos = prb*PPos

