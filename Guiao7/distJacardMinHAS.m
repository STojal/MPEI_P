function [J] = distJacardMinHAS(Nu,Set,k)
% Calcula a distaˆncia de Jaccard entre todos os pares pela definicao.
% Numero de utilizadores setInformacao input adicional k numero de funcoes
% has

J=zeros(Nu); % array para guardar distaˆncias

%CALCULAR A MATRIZ 
MH = zeros(k,Nu);
    
% para cada has
    for hf=1:K
        % para cada user
            
        for user=1:Nu
            % aplicar a funcao has a cada user
            Conjunto = Set(user);
            Has_codes = zeros(1,length(conjunto));
            for elem=1:length(Conjunto)
                Has_codes(elem) = Has_Function(Conjunto(elem),hf);
            end
        
            
            MH(hf,user)=min(Has_codes);

        end
    end
    
%CALCULAR A DISTANCIA
    % para cada user 
for N1=1:Nu
        % obter os outros users
        for N2=N1+1:Nu
            % o bter as assinaturas
            assinatura1 =MH(:,N1);
            assinatura2 =MH(:,N2);
                %calcula os valores uguais
            vi=sum(assinatura1==assinatura2);
            % distancia de num valores /k
            dist=1-vi/k;
            J(N1,N2)=dist;
        end
            
end
end
