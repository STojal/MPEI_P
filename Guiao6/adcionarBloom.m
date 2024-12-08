function BF = adcionarBloom(elemento,BF,k)
%adcionarBloom 
%repetir k vezes
%   aplicar funcao de has para obter indices do elemento
%   indice igualar a 1
%   bf bloomfilter
%   elemento -elemento para adcionar
%   k numero de bits 
chave=elemento;
for hf=1:k 
   chave =[chave num2str(hf)];
   indice= string2hash(chave);
   indice =mod(indice,length(BF))+1;
   BF(indice)=1;

end

