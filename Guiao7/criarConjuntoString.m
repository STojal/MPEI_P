function [Shimgle,titlo] = criarConjuntoString(string,k)
%CRIARCONJUNTOSTRING Summary of this function goes here
%   Detailed explanation goes here
titlo = {string};
Nu = length(titlo);

indexShimgles=1;
Shimgle =cell(Nu,1);
for indexTitle=1:Nu
    Title=titlo{indexTitle};
    %defenir aui o tabalho do shilbes
    for pos=1:k:length(Title)-k+1
        Shimgle{indexShimgles}= (Title(pos:pos+k-1)) ;
        indexShimgles=indexShimgles+1;
    end
    set{indexTitle}=Shimgle;
end
end

