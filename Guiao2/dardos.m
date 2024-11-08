function [p] = dardos(n,m,N)
%UNTITLED Summary of this function goes here
%   n = N dardos; m= N alvos; N= numero de tentativas



experiencias = randi(m,n,N);

length(unique(experiencias(:,1)))
casosFav =0;
for i=1:N
    if length(unique(experiencias(:,i)))==n
        casosFav =casosFav +1;


    end
end
p = casosFav/N;

    


end