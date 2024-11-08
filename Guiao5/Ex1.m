clc,clearvars

strs = {"just plain boring" " entirely predictable and lacks energy" " no surprises and very few laughs" " very powerful" " the most fun film of the summer"};

wordSample = {};
wordsFrases={};

indexWordFrases=1;
indexWordSample=1;


for indexF =1:length(strs)
    words = split(strs{indexF}," ");
    wordsFrases{indexWordFrases} =words;
    indexWordFrases=indexWordFrases+1;
    for word=1:length(words)
        wordSample{indexWordSample}=words{word};
        indexWordSample=indexWordSample+1;
    end
end


% allText = strjoin(strs, ' ');
% wordSample = regexp(allText, '\s+', 'split');;
% frases in to words wordsFrases = regexp(strs, '\s+', 'split');

wordSampleU=unique(wordSample);


Treino=zeros(indexWordFrases,length(wordSampleU));

%numero de repeticoes das palavras unicas por frase
for linha = 1:length(wordsFrases)
    frase = wordsFrases{linha};  
    
    for col = 1:length(wordSampleU)
        Treino(linha, col) = sum(strcmp(wordSampleU{col}, frase));  % Conta ocorrências
    end
end

disp(Treino);

%vetor com classes

classes = ['-';'-';'-';'+';'+'];

%P('-')
%documetos negativos
docs_neg=sum(classes=='-');
PNeg=docs_neg/length(classes);

%P('+')
%documetos negativos
docs_pos=sum(classes=='+');
PPos=docs_neg/length(classes);


% probabilidade das palavras postivas sabendo ue é positivo
%ocorrencia das palvaras uando é positivo
Treino_Classe= Treino(classes=='+',:);
ocorrencia_palavras = sum(Treino_Classe) +1;
totalPalvras=sum(Treino_Classe(:)) +length(wordSampleU);

%
prob_palavra_dado_positivo = ocorrencia_palavras/totalPalvras;


% probabilidade das palavras postivas sabendo ue é positivo
%ocorrencia das palvaras uando é positivo
Treino_Classe_Neg= Treino(classes=='-',:);
ocorrencia_palavras_Neg = sum(Treino_Classe_Neg) +1;
totalPalvras_Neg=sum(Treino_Classe_Neg(:)) +length(wordSampleU);

%
prob_palavra_dado_Neg = ocorrencia_palavras_Neg/totalPalvras_Neg;
palavras_teste = {"Predictable","no","fun"};
prb=1;
for p=1:length(palavras_teste)
    index=strcmpi(wordSampleU,palavras_teste{p});
    prb= prb*prob_palavra_dado_Neg(index);
end 
PSerNegativo = prb*PNeg

prb=1;
for p=1:length(palavras_teste)
    index=strcmpi(wordSampleU,palavras_teste{p});
    prb= prb*prob_palavra_dado_positivo(index);
end 
PSerPos = prb*PPos


