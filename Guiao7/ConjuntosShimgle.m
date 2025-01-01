function [Shimgle,titlo] = ConjuntosShimgle(data,k)
%CONJUNTOSSHIMGLE Summary of this function goes here
%   Detailed explanation goes here

dic2= readcell(data, 'Delimiter','\t'); 
titlo = char(dic2(1:end,1));
Nfilmes=size(dic2, 1);

Shimgle=cell(Nfilmes, 1);
for i=1:Nfilmes
    title=char(dic2{i, 1});
    shingles={};
    for j=1:(length(title)-2)
        shingles{j}=title(j:(j+2));
    end
    Shimgle{i}=shingles;
end
end

