function [MA] = assinaturas_minHash(Set, nhf, R, p)
    %ASSINATURAS_MINHASH Summary of this function goes here
    %   Detailed explanation goes here

    Nu = length(Set);  % Tamanho do conjunto de dados
    MA = zeros(nhf, Nu);
    for hf=1:nhf
        for n1 = 1:Nu
            conjunto = Set{n1};  
            hc = zeros(1, length(conjunto));  
            for nelem = 1:length(conjunto)
                hc(nelem) = Has_FunctionShimgles(conjunto{nelem}, hf, R, p);  
            end
    
            minHas = min(hc);  
            
            MA(hf,n1) = minHas; 
        end
    end
end

%%
%function [MA] = assinaturas_minHash(Set,k,R,p)
%ASSINATURAS_MINHASH Summary of this function goes here
%   Detailed explanation goes here
%
%Nu=  length(Set);
%
%h= waitbar(0,"Calculating");
%MA = cell(Nu,1);
%for n1= 1:Nu
%    waitbar(n1/Nu,h);
%    conjunto=Set{n1};
%    hc=zeros(1,length(conjunto));
%    for nelem=1:length(conjunto)
%        hc(nelem)=Has_FunctionShimgles(conjunto,hf,R,p)
%    end
%    minHas = min(hc);
%    MA(n1)=minHas;
%end
%delete (h)

%end

