function res = pertenceBloom(elemento,BF,k)
%SEARCHBLOOM Summary of this function goes here
%   Detailed explanation goes here
chave=elemento;
res=true;
for hf=1:k 
   chave =[chave num2str(hf)];
   indice= string2hash(chave);
   indice =mod(indice,length(BF))+1;
   if BF(indice)==0
        res =false;
        break
   end

end
end

