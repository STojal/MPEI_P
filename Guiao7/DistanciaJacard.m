function [J] = DistanciaJacard(Nu,Set)
% Calcula a distaˆncia de Jaccard entre todos os pares pela definicao.
% Numero de utilizadores setInformacao
J=zeros(Nu); % array para guardar distaˆncias
h= waitbar(0,"Calculating");
for n1= 1:Nu
    waitbar(n1/Nu,h);
    for n2= n1+1:Nu
        C1=Set{n1};
        C2=Set{n2};
        % similariedade  = length(intersect(C1,C2))/length(uniao(C1,C2))
        J(n1,n2)=1-length(intersect(C1,C2))/length(union(C1,C2));
    end
end
delete (h)
end

