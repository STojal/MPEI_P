clc,clearvars
k=3
[Shimgle,titlo] = ConjuntosShimgle('film_info.txt',k);
%%

p=123456789
while ~isprime(p)
    p=p+2
end


%%
nhf=200;
R=randi(p, nhf, k);
MA= assinaturas_minHash(Shimgle, k, R, p);

%%
dic3= cell({"GodFather", "Orange", "Princess", "Karate"});

shingleTest=cell(3, 1);
for i=1:3
    title=char(dic3{i});
    shingles={};
    for j=1:(length(title)-2)
        shingles{j}=title(j:(j+2));
    end
    shingleTest{i}=shingles;
end
shingleTest

MA2=assinaturas_minHash(shingleTest, k, R, p);

for i=1:length(MA2)
    max = 0;
    id=0;
    for j=1:size(MA, 2)
        vi=sum(MA(:, j)==MA2(:, i));
        dist=vi/nhf;
        if dist > max
            max=dist;
            id=j;
        end
    end
    title
end
